import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/barang_admin/barang_admin_bloc.dart';
import 'package:peminjaman_barang/features/peminjaman/presentation/blocs/get_all_peminjaman/get_all_peminjaman_bloc.dart';

enum DashboardPageState { admin, user }

class DashboardPage extends StatefulWidget {
  final DashboardPageState dashboardPageState;

  const DashboardPage({super.key, required this.dashboardPageState});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    context.read<BarangAdminBloc>().add(GetBarangAdmin());
    context.read<GetAllPeminjamanBloc>().add(GetAllPeminjaman());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.dashboardPageState == DashboardPageState.admin) {
      return Padding(
        padding: const EdgeInsets.only(top: 110, left: 95, right: 95),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 277,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF6CB7D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Data Barang",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              BlocBuilder<BarangAdminBloc, BarangAdminState>(
                                builder: (context, state) {
                                  if (state is BarangAdminLoading) {
                                    return const CupertinoActivityIndicator();
                                  } else if (state is BarangAdminLoaded) {
                                    return Text(
                                      state.barangAdminEntity!.length
                                          .toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                },
                              )
                            ],
                          ),
                          Image.asset('assets/images/box.png'),
                        ],
                      ),
                    ),
                    Container(
                      width: 277,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF6CB7D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Peminjaman",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              BlocBuilder<GetAllPeminjamanBloc,
                                  GetAllPeminjamanState>(
                                builder: (context, state) {
                                  if (state is GetAllPeminjamanLoading) {
                                    return const CupertinoActivityIndicator();
                                  } else if (state is GetAllPeminjamanLoaded) {
                                    return Text(
                                      state.listPeminjamanEntity!.length
                                          .toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                },
                              )
                            ],
                          ),
                          Image.asset('assets/images/peminjaman.png'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 277,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF6CB7D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Pengembalian",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              BlocBuilder<GetAllPeminjamanBloc,
                                  GetAllPeminjamanState>(
                                builder: (context, state) {
                                  if (state is GetAllPeminjamanLoading) {
                                    return const CupertinoActivityIndicator();
                                  } else if (state is GetAllPeminjamanLoaded) {
                                    return Text(
                                      state.listPeminjamanEntity!.length
                                          .toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                },
                              )
                            ],
                          ),
                          Image.asset('assets/images/pengembalian.png'),
                        ],
                      ),
                    ),
                    Container(
                      width: 277,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF6CB7D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Akun Peminjam",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(),
                            ],
                          ),
                          Image.asset('assets/images/user.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color(0xff2E2D51),
              ),
              child: const Center(
                child: Text(
                  'Admin Dashboard',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 110, left: 95, right: 95),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 277,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF6CB7D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Data Barang",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              BlocBuilder<BarangAdminBloc, BarangAdminState>(
                                builder: (context, state) {
                                  if (state is BarangAdminLoading) {
                                    return const CupertinoActivityIndicator();
                                  } else if (state is BarangAdminLoaded) {
                                    return Text(
                                      state.barangAdminEntity!.length
                                          .toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                },
                              )
                            ],
                          ),
                          Image.asset('assets/images/box.png'),
                        ],
                      ),
                    ),
                    Container(
                      width: 277,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF6CB7D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Peminjaman",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              BlocBuilder<GetAllPeminjamanBloc,
                                  GetAllPeminjamanState>(
                                builder: (context, state) {
                                  if (state is GetAllPeminjamanLoading) {
                                    return const CupertinoActivityIndicator();
                                  } else if (state is GetAllPeminjamanLoaded) {
                                    return Text(
                                      state.listPeminjamanEntity!.length
                                          .toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                },
                              )
                            ],
                          ),
                          Image.asset('assets/images/peminjaman.png'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 277,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF6CB7D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Pengembalian",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              BlocBuilder<GetAllPeminjamanBloc,
                                  GetAllPeminjamanState>(
                                builder: (context, state) {
                                  if (state is GetAllPeminjamanLoading) {
                                    return const CupertinoActivityIndicator();
                                  } else if (state is GetAllPeminjamanLoaded) {
                                    return Text(
                                      state.listPeminjamanEntity!.length
                                          .toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                },
                              )
                            ],
                          ),
                          Image.asset('assets/images/pengembalian.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color(0xff2E2D51),
              ),
              child: const Center(
                child: Text(
                  'User Dashboard',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}
