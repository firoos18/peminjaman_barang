import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:peminjaman_barang/core/commons/widgets/custom_loading_indicator.dart';
import 'package:peminjaman_barang/features/barang/data/models/add_barang_model.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/add_barang_admin/add_barang_admin_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/barang_admin/barang_admin_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/barang_by_id/barang_by_id_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/delete_barang/delete_barang_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/update_barang/update_barang_bloc.dart';

enum BarangAdminPageState { data, add, edit }

enum MenuButton { edit, delete }

class BarangAdminPage extends StatefulWidget {
  final BarangAdminPageState? barangAdminPageState;

  const BarangAdminPage({
    super.key,
    required this.barangAdminPageState,
  });

  @override
  State<BarangAdminPage> createState() => _BarangAdminPageState();
}

class _BarangAdminPageState extends State<BarangAdminPage> {
  late BarangAdminPageState _barangAdminPageState;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _kodeBarangController = TextEditingController();
  final TextEditingController _namaBarangController = TextEditingController();
  final TextEditingController _merekBarangController = TextEditingController();
  final TextEditingController _jenisBarangController = TextEditingController();
  final TextEditingController _unitBarangController = TextEditingController();
  String? selectedBarangId;

  @override
  void initState() {
    context.read<BarangAdminBloc>().add(GetBarangAdmin());

    if (widget.barangAdminPageState != null) {
      setState(() {
        _barangAdminPageState = widget.barangAdminPageState!;
      });
    } else {
      setState(() {
        _barangAdminPageState = BarangAdminPageState.data;
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_barangAdminPageState == BarangAdminPageState.data) {
      return BlocListener<DeleteBarangBloc, DeleteBarangState>(
        listener: (context, state) {
          if (state is DeleteBarangLoading) {
            showDialog(
              context: context,
              builder: (context) => const CustomLoadingIndicator(),
            );
          } else if (state is DeleteBarangFailed) {
            context.pop();
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message!)),
            );
          } else {
            context.pop();
            context.read<BarangAdminBloc>().add(GetBarangAdmin());
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Color(0xffDFA947),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 48, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/box.png'),
                              const SizedBox(width: 8),
                              const Text(
                                'Data Barang',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 300),
                          ElevatedButton(
                            onPressed: () => setState(() {
                              _barangAdminPageState = BarangAdminPageState.add;
                            }),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(140, 38),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(width: 1),
                              ),
                              backgroundColor: const Color(0xff2E2D51),
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('Tambah Barang'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: const BoxDecoration(
                      color: Color(0xffF6CB7D),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 32, right: 16, left: 16),
                      child: BlocBuilder<BarangAdminBloc, BarangAdminState>(
                        builder: (context, state) {
                          if (state is BarangAdminLoading) {
                            return const Center(
                              child: CupertinoActivityIndicator(),
                            );
                          } else if (state is BarangAdminLoaded) {
                            print(state.barangAdminEntity);
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Column(
                                children: [
                                  Table(
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    children: const [
                                      TableRow(children: [
                                        Text(
                                          'No',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Kode Barang',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Nama Barang',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Merek',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Jenis',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Unit',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          '',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ])
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  const Divider(
                                    color: Colors.black,
                                  ),
                                  const SizedBox(height: 16),
                                  Table(
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    children: List<TableRow>.generate(
                                      state.barangAdminEntity!.length,
                                      (index) {
                                        final barang =
                                            state.barangAdminEntity![index];
                                        return TableRow(
                                          children: [
                                            Text(
                                              (index + 1).toString(),
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              barang.kodeBarang!,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              barang.nama!,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              barang.merek!,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              barang.jenis!,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              barang.unit!.toString(),
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            PopupMenuButton(
                                              itemBuilder: (context) =>
                                                  <PopupMenuEntry<MenuButton>>[
                                                PopupMenuItem(
                                                  value: MenuButton.delete,
                                                  onTap: () => context
                                                      .read<DeleteBarangBloc>()
                                                      .add(
                                                        DeleteBarangButtonTapped(
                                                          id: state
                                                              .barangAdminEntity![
                                                                  index]
                                                              .id,
                                                        ),
                                                      ),
                                                  child: const Text('Hapus'),
                                                ),
                                                PopupMenuItem(
                                                  value: MenuButton.edit,
                                                  onTap: () {
                                                    setState(() {
                                                      _barangAdminPageState =
                                                          BarangAdminPageState
                                                              .edit;
                                                    });
                                                    setState(() {
                                                      selectedBarangId = state
                                                          .barangAdminEntity![
                                                              index]
                                                          .id;
                                                    });

                                                    context
                                                        .read<BarangByIdBloc>()
                                                        .add(GetBarangById(
                                                            id: selectedBarangId));
                                                  },
                                                  child: const Text('Edit'),
                                                ),
                                              ],
                                            )
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return const SizedBox();
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else if (_barangAdminPageState == BarangAdminPageState.add) {
      return BlocListener<AddBarangAdminBloc, AddBarangAdminState>(
        listener: (context, state) {
          if (state is AddBarangAdminLoading) {
            showDialog(
              context: context,
              builder: (context) => const CustomLoadingIndicator(),
            );
          } else if (state is AddBarangAdminFailed) {
            context.pop();
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message!),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.red.shade600,
              ),
            );
          } else {
            context.pop();
            setState(() {
              _barangAdminPageState = BarangAdminPageState.data;
            });
            context.read<BarangAdminBloc>().add(GetBarangAdmin());
          }
        },
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            padding: const EdgeInsets.all(64),
            decoration: BoxDecoration(
              color: const Color(0xffF6CB7D),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/box.png'),
                          const SizedBox(width: 8),
                          const Text(
                            'Tambah Data Barang',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () => setState(() {
                          _barangAdminPageState = BarangAdminPageState.data;
                        }),
                        child: const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Kode Barang',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: TextFormField(
                              controller: _kodeBarangController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Kode Barang tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Nama Barang',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: TextFormField(
                              controller: _namaBarangController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Nama Barang tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Merek',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.27,
                            child: TextFormField(
                              controller: _merekBarangController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Merek Barang tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Jenis',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.27,
                            child: TextFormField(
                              controller: _jenisBarangController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Jenis Barang tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Unit',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: TextFormField(
                              controller: _unitBarangController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Jumlah Unit Barang tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            final String kodeBarang =
                                _kodeBarangController.text.trim();
                            final String nama =
                                _namaBarangController.text.trim();
                            final String merek =
                                _merekBarangController.text.trim();
                            final String jenis =
                                _jenisBarangController.text.trim();
                            final int unit =
                                int.parse(_unitBarangController.text.trim());

                            final AddBarangModel addBarangModel =
                                AddBarangModel(
                              kodeBarang: kodeBarang,
                              nama: nama,
                              merek: merek,
                              jenis: jenis,
                              unit: unit,
                            );

                            context.read<AddBarangAdminBloc>().add(
                                AddBarangAdminButtonTapped(
                                    addBarangModel: addBarangModel));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          minimumSize: const Size(120, 48),
                          backgroundColor: const Color(0xffBBBBBB),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Submit'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return MultiBlocListener(
        listeners: [
          BlocListener<BarangByIdBloc, BarangByIdState>(
            listener: (context, state) {
              if (state is BarangByIdLoading) {
                showDialog(
                  context: context,
                  builder: (context) => const CustomLoadingIndicator(),
                );
              } else if (state is BarangByIdFailed) {
                context.pop();
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message!)),
                );
              } else {
                context.pop();
              }
            },
          ),
          BlocListener<UpdateBarangBloc, UpdateBarangState>(
            listener: (context, state) {
              if (state is UpdateBarangLoading) {
                showDialog(
                  context: context,
                  builder: (context) => const CustomLoadingIndicator(),
                );
              } else if (state is UpdateBarangFailed) {
                context.pop();
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message!)),
                );
              } else {
                context.pop();
                setState(() {
                  _barangAdminPageState = BarangAdminPageState.data;
                });
                context.read<BarangAdminBloc>().add(GetBarangAdmin());
              }
            },
          ),
        ],
        child: BlocBuilder<BarangByIdBloc, BarangByIdState>(
          builder: (context, state) {
            if (state is BarangByIdLoaded) {
              return Center(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                  padding: const EdgeInsets.all(64),
                  decoration: BoxDecoration(
                    color: const Color(0xffF6CB7D),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/box.png'),
                                const SizedBox(width: 8),
                                const Text(
                                  'Edit Data Barang',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () => setState(() {
                                _barangAdminPageState =
                                    BarangAdminPageState.data;
                              }),
                              child: const CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Kode Barang',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  child: TextFormField(
                                    controller: _kodeBarangController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: state.barangEntity!.kodeBarang,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Kode Barang tidak boleh kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Nama Barang',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: TextFormField(
                                    controller: _namaBarangController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: state.barangEntity!.nama,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Nama Barang tidak boleh kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Merek',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.27,
                                  child: TextFormField(
                                    controller: _merekBarangController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: state.barangEntity!.merek,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Merek Barang tidak boleh kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Jenis',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.27,
                                  child: TextFormField(
                                    controller: _jenisBarangController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: state.barangEntity!.jenis,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Jenis Barang tidak boleh kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Unit',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  child: TextFormField(
                                    controller: _unitBarangController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText:
                                          state.barangEntity!.unit.toString(),
                                    ),
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.allow(
                                          RegExp(r'[0-9]')),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Jumlah Unit Barang tidak boleh kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  final String kodeBarang =
                                      _kodeBarangController.text.trim();
                                  final String nama =
                                      _namaBarangController.text.trim();
                                  final String merek =
                                      _merekBarangController.text.trim();
                                  final String jenis =
                                      _jenisBarangController.text.trim();
                                  final int unit = int.parse(
                                      _unitBarangController.text.trim());

                                  final AddBarangModel addBarangModel =
                                      AddBarangModel(
                                    kodeBarang: kodeBarang,
                                    nama: nama,
                                    merek: merek,
                                    jenis: jenis,
                                    unit: unit,
                                  );

                                  context.read<UpdateBarangBloc>().add(
                                        UpdateBarangButtonTapped(
                                            id: selectedBarangId,
                                            addBarangModel: addBarangModel),
                                      );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                minimumSize: const Size(120, 48),
                                backgroundColor: const Color(0xffBBBBBB),
                                foregroundColor: Colors.white,
                              ),
                              child: const Text('Submit'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (state is BarangByIdLoading) {
              return Center(
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0xffDFA947),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const CupertinoActivityIndicator(),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      );
    }
  }
}
