import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:peminjaman_barang/features/peminjaman/presentation/blocs/get_all_peminjaman/get_all_peminjaman_bloc.dart';
import 'package:intl/intl.dart';

enum PeminjamanPageState { peminjaman, pinjam }

class PeminjamanPage extends StatefulWidget {
  final PeminjamanPageState peminjamanPageState;

  const PeminjamanPage({super.key, required this.peminjamanPageState});

  @override
  State<PeminjamanPage> createState() => _PeminjamanPageState();
}

class _PeminjamanPageState extends State<PeminjamanPage> {
  @override
  void initState() {
    context.read<GetAllPeminjamanBloc>().add(GetAllPeminjaman());
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
      return Center(
        child: Container(
          width: 64,
          height: 64,
          color: Colors.green,
        ),
      );
    }
  }
}
