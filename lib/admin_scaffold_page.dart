import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:peminjaman_barang/features/barang/presentation/page/barang_admin_page.dart';
import 'package:peminjaman_barang/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:peminjaman_barang/features/peminjaman/presentation/pages/peminjaman_page.dart';
import 'package:peminjaman_barang/features/profile/presentation/blocs/admin/admin_bloc.dart';
import 'package:peminjaman_barang/features/transaksi/presentation/pages/transaksi_page.dart';

class AdminScaffoldPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const AdminScaffoldPage({super.key, required this.navigationShell});

  @override
  State<AdminScaffoldPage> createState() => _AdminScaffoldPageState();
}

class _AdminScaffoldPageState extends State<AdminScaffoldPage>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  late TabController _tabController;

  List<Widget> tabs = const [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        'Dashboard',
        style: TextStyle(
          color: Color(0xff2E2D51),
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        'Data Barang',
        style: TextStyle(
          color: Color(0xff2E2D51),
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        'Peminjaman',
        style: TextStyle(
          color: Color(0xff2E2D51),
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        'Transaksi Peminjaman',
        style: TextStyle(
          color: Color(0xff2E2D51),
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    context.read<AdminBloc>().add(GetAdminInfo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 50,
                      ),
                      margin: const EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        color: const Color(0xffF6CB7D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TabBar(
                        tabs: tabs,
                        indicatorColor: Colors.transparent,
                        dividerColor: Colors.transparent,
                        controller: _tabController,
                        dividerHeight: 0,
                        indicator: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: const Color(0xff2E2D51),
                          ),
                        ),
                        onTap: (value) => _goBranch(value),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          DashboardPage(),
                          BarangAdminPage(
                            barangAdminPageState: BarangAdminPageState.data,
                          ),
                          PeminjamanPage(
                            peminjamanPageState: PeminjamanPageState.peminjaman,
                          ),
                          TransaksiPage(
                            transaksiPageState: TransaksiPageState.admin,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(top: 30),
                color: const Color(0xff2E2D51),
                width: double.infinity,
                child: BlocBuilder<AdminBloc, AdminState>(
                  builder: (context, state) {
                    if (state is AdminLoading) {
                      return const Center(
                        child: CupertinoActivityIndicator(),
                      );
                    } else if (state is AdminLoaded) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/images/profile-pic.png'),
                          ),
                          const SizedBox(height: 32),
                          Text(
                            'Nama : ${state.userResponseEntity!.data!.nama}',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            'Admin',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Nama : ${state.userResponseEntity!.data!.nama}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Email : ${state.userResponseEntity!.data!.email}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const Text(
                            'Password : *********',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Alamat : ${state.userResponseEntity!.data!.alamat}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
