import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peminjaman_barang/features/dashboard/presentation/page/dashboard_page.dart';

class UserScaffoldPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const UserScaffoldPage({super.key, required this.navigationShell});

  @override
  State<UserScaffoldPage> createState() => UserScaffoldPageState();
}

class UserScaffoldPageState extends State<UserScaffoldPage>
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
        'Pinjam Barang',
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
                          DashboardPage(),
                          DashboardPage(),
                          DashboardPage(),
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
                child: Column(
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
                      'Nama',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Role',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Nama',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      'Alamat',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
