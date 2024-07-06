import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/barang_admin/barang_admin_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/page/add_barang_page.dart';

enum BarangAdminPageState { data, add, edit }

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
      return Padding(
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
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
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
                                            barang.barang!.kodeBarang!,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            barang.barang!.nama!,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            barang.barang!.merek!,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            barang.barang!.jenis!,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            barang.barang!.unit!.toString(),
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: const Icon(Icons.more_vert),
                                          ),
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
      );
    } else if (_barangAdminPageState == BarangAdminPageState.add) {
      return Center(
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
                      onPressed: () {},
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
    } else {
      return Center(
        child: Container(
          color: Colors.red,
        ),
      );
    }
  }
}
