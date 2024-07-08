import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:peminjaman_barang/features/peminjaman/presentation/blocs/get_all_peminjaman/get_all_peminjaman_bloc.dart';
import 'package:peminjaman_barang/features/transaksi/presentation/blocs/admin_transaksi/admin_transaksi_bloc.dart';
import 'package:peminjaman_barang/features/transaksi/presentation/blocs/user_transaksi/user_transaksi_bloc.dart';

enum TransaksiPageState { user, admin }

class TransaksiPage extends StatefulWidget {
  final TransaksiPageState transaksiPageState;

  const TransaksiPage({super.key, required this.transaksiPageState});

  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  @override
  void initState() {
    if (widget.transaksiPageState == TransaksiPageState.admin) {
      context.read<AdminTransaksiBloc>().add(GetAllAdminTransaksi());
    } else {
      context.read<UserTransaksiBloc>().add(GetUserTransaksi());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.transaksiPageState == TransaksiPageState.admin) {
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
                    child: BlocBuilder<AdminTransaksiBloc, AdminTransaksiState>(
                      builder: (context, state) {
                        if (state is AdminTransaksiLoading) {
                          return const Center(
                            child: CupertinoActivityIndicator(),
                          );
                        } else if (state is AdminTransaksiLoaded) {
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
                                          'Tanggal Pinjam',
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
                                          'Nama Peminjam',
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
                                          'Status Peminjaman',
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
                                    state.transaksiEntity!.length,
                                    (index) {
                                      final barang =
                                          state.transaksiEntity![index];
                                      return TableRow(
                                        children: [
                                          Text(
                                            DateFormat.yMMMMd()
                                                .format(barang.tanggalPinjam!),
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
                                            barang.peminjaman!.peminjam!.nama!,
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
                                          Text(
                                            barang.status!,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
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
    } else {
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
                    child: BlocBuilder<UserTransaksiBloc, UserTransaksiState>(
                      builder: (context, state) {
                        if (state is UserTransaksiLoading) {
                          return const Center(
                            child: CupertinoActivityIndicator(),
                          );
                        } else if (state is UserTransaksiLoaded) {
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
                                          'Tanggal Pinjam',
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
                                          'Nama Peminjam',
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
                                          'Status Peminjaman',
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
                                    state.transaksiEntity!.length,
                                    (index) {
                                      final barang =
                                          state.transaksiEntity![index];
                                      return TableRow(
                                        children: [
                                          Text(
                                            DateFormat.yMMMMd()
                                                .format(barang.tanggalPinjam!),
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
                                            barang.peminjaman!.peminjam!.nama!,
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
                                          Text(
                                            barang.status!,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
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
    }
  }
}
