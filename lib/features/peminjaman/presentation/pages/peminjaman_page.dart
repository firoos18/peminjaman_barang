import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:peminjaman_barang/core/commons/widgets/custom_loading_indicator.dart';
import 'package:peminjaman_barang/features/peminjaman/data/models/pinjam_model.dart';
import 'package:peminjaman_barang/features/peminjaman/presentation/blocs/get_all_peminjaman/get_all_peminjaman_bloc.dart';
import 'package:intl/intl.dart';
import 'package:peminjaman_barang/features/peminjaman/presentation/blocs/pinjam_barang/pinjam_barang_bloc.dart';

enum PeminjamanPageState { peminjaman, pinjam }

class PeminjamanPage extends StatefulWidget {
  final PeminjamanPageState peminjamanPageState;

  const PeminjamanPage({super.key, required this.peminjamanPageState});

  @override
  State<PeminjamanPage> createState() => _PeminjamanPageState();
}

class _PeminjamanPageState extends State<PeminjamanPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _kodeBarangController = TextEditingController();
  final TextEditingController _namaBarangController = TextEditingController();
  final TextEditingController _jumlahBarangController = TextEditingController();
  final TextEditingController _tanggalPinjamController =
      TextEditingController();
  final TextEditingController _tanggalKembaliController =
      TextEditingController();
  final ValueNotifier<bool> _isButtonEnabled = ValueNotifier<bool>(false);

  void validateFields() {
    bool isFilled = _namaController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _kodeBarangController.text.isNotEmpty &&
        _namaBarangController.text.isNotEmpty &&
        _jumlahBarangController.text.isNotEmpty &&
        _tanggalKembaliController.text.isNotEmpty &&
        _tanggalPinjamController.text.isNotEmpty;
    _isButtonEnabled.value = isFilled;
  }

  @override
  void initState() {
    context.read<GetAllPeminjamanBloc>().add(GetAllPeminjaman());
    _namaController.addListener(validateFields);
    _emailController.addListener(validateFields);
    _kodeBarangController.addListener(validateFields);
    _namaBarangController.addListener(validateFields);
    _jumlahBarangController.addListener(validateFields);
    _tanggalKembaliController.addListener(validateFields);
    _tanggalPinjamController.addListener(validateFields);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.peminjamanPageState == PeminjamanPageState.peminjaman) {
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/peminjaman.png'),
                        const SizedBox(width: 8),
                        const Text(
                          'Peminjaman',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
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
                    child: BlocBuilder<GetAllPeminjamanBloc,
                        GetAllPeminjamanState>(
                      builder: (context, state) {
                        if (state is GetAllPeminjamanLoading) {
                          return const Center(
                            child: CupertinoActivityIndicator(),
                          );
                        } else if (state is GetAllPeminjamanLoaded) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              children: [
                                Table(
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  children: const [
                                    TableRow(
                                      children: [
                                        Text(
                                          'Nama Peminjam',
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
                                          'Unit',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Tanggal Pinjam',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Tanggal Kembali',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    )
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
                                    state.listPeminjamanEntity!.length,
                                    (index) {
                                      final barang =
                                          state.listPeminjamanEntity![index];
                                      return TableRow(
                                        children: [
                                          Text(
                                            barang.peminjam!.nama!,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            barang.barang != null
                                                ? barang.barang!.kodeBarang!
                                                : 'Barang Tidak Tersedia',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            barang.barang != null
                                                ? barang.barang!.nama!
                                                : 'Barang Tidak Tersedia',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            barang.jumlah.toString(),
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            DateFormat.yMMMMd()
                                                .format(barang.tanggalPinjam!),
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            DateFormat.yMMMMd()
                                                .format(barang.tanggalKembali!),
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
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
      );
    } else {
      return BlocListener<PinjamBarangBloc, PinjamBarangState>(
        listener: (context, state) {
          if (state is PinjamBarangLoading) {
            showDialog(
              context: context,
              builder: (context) => const CustomLoadingIndicator(),
            );
          } else if (state is PinjamBarangFailed) {
            context.pop();
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message!)),
            );
          } else {
            context.pop();
            _namaController.clear();
            _emailController.clear();
            _namaBarangController.clear();
            _jumlahBarangController.clear();
            _kodeBarangController.clear();
            _tanggalKembaliController.clear();
            _tanggalPinjamController.clear();
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Success')),
            );
          }
        },
        child: Center(
          child: Stack(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                padding: const EdgeInsets.only(
                    top: 90, right: 64, left: 64, bottom: 16),
                decoration: BoxDecoration(
                  color: const Color(0xffF6CB7D),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Nama',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  child: TextFormField(
                                    controller: _namaController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Nama Peminjam tidak boleh kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  child: TextFormField(
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Email Peminjam tidak boleh kosong';
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Jumlah Barang',
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
                                    controller: _jumlahBarangController,
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
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Tanggal Pinjam',
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
                                    controller: _tanggalPinjamController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'YYYY-MM-DD',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Tanggal Pinjam Barang tidak boleh kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Tanggal Kembali',
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
                                    controller: _tanggalKembaliController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'YYYY-MM-DD',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Tanggal Kembali Barang tidak boleh kosong';
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
                            ValueListenableBuilder(
                              valueListenable: _isButtonEnabled,
                              builder: (context, value, child) =>
                                  ElevatedButton(
                                onPressed: value
                                    ? () {
                                        if (formKey.currentState!.validate()) {
                                          final nama =
                                              _namaController.text.trim();
                                          final email =
                                              _emailController.text.trim();
                                          final kodeBarang =
                                              _kodeBarangController.text.trim();
                                          final namaBarang =
                                              _namaBarangController.text.trim();
                                          final jumlahBarang =
                                              _jumlahBarangController.text
                                                  .trim();
                                          final tanggalPinjam =
                                              _tanggalPinjamController.text
                                                  .trim();
                                          final tanggalKembali =
                                              _tanggalKembaliController.text
                                                  .trim();

                                          final PinjamModel pinjamModel =
                                              PinjamModel(
                                            email: email,
                                            nama: nama,
                                            namaBarang: namaBarang,
                                            kodeBarang: kodeBarang,
                                            jumlah: int.parse(jumlahBarang),
                                            tanggalPinjam:
                                                DateTime.parse(tanggalPinjam),
                                            tanggalKembali:
                                                DateTime.parse(tanggalKembali),
                                          );

                                          context.read<PinjamBarangBloc>().add(
                                              PinjamBarangButtonTapped(
                                                  pinjamModel: pinjamModel));
                                        }
                                      }
                                    : null,
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  minimumSize: const Size(120, 48),
                                  backgroundColor: const Color(0xff2E2D51),
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text('Submit'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 72, vertical: 24),
                margin:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xffDFA947),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/peminjaman.png'),
                    const SizedBox(width: 8),
                    const Text(
                      'Pinjam Barang',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
