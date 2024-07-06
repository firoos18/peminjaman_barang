import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:peminjaman_barang/features/barang/presentation/page/add_barang_page.dart';
import 'package:peminjaman_barang/features/barang/presentation/page/barang_admin_page.dart';
import 'package:peminjaman_barang/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:peminjaman_barang/features/auth/presentation/page/auth_page.dart';
import 'package:peminjaman_barang/landing_page.dart';
import 'package:peminjaman_barang/admin_scaffold_page.dart';
import 'package:peminjaman_barang/user_scaffold_page.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');

final GlobalKey<NavigatorState> _adminDashboardNavigator =
    GlobalKey(debugLabel: 'dashboard');
final GlobalKey<NavigatorState> _adminDataBarangNavigator =
    GlobalKey(debugLabel: 'data-barang');
final GlobalKey<NavigatorState> _adminPeminjamanNavigator =
    GlobalKey(debugLabel: 'peminjaman');
final GlobalKey<NavigatorState> _adminTransaksiNavigator =
    GlobalKey(debugLabel: 'transaksi');

final GlobalKey<NavigatorState> _userDashboardNavigator =
    GlobalKey(debugLabel: 'dashboard');
final GlobalKey<NavigatorState> _userDataBarangNavigator =
    GlobalKey(debugLabel: 'data-barang');
final GlobalKey<NavigatorState> _userTransaksiNavigator =
    GlobalKey(debugLabel: 'transaksi');
final GlobalKey<NavigatorState> _userPinjamNavigator =
    GlobalKey(debugLabel: 'pinjam');

final GoRouter router = GoRouter(
  initialLocation: '/landing',
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigator,
  routes: [
    GoRoute(
      path: '/auth',
      name: 'auth',
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      path: '/landing',
      name: 'landing',
      builder: (context, state) => const LandingPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => AdminScaffoldPage(
        navigationShell: navigationShell,
      ),
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: _adminDashboardNavigator,
          routes: [
            GoRoute(
              path: '/admin',
              name: 'dashboard-admin',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _adminDataBarangNavigator,
          routes: [
            GoRoute(
              path: '/data-barang-admin',
              name: 'data-barang-admin',
              builder: (context, state) => BarangAdminPage(
                barangAdminPageState: state.extra as BarangAdminPageState,
              ),
              routes: [
                GoRoute(
                  path: 'add-barang',
                  name: 'add-barang',
                  builder: (context, state) => const AddBarangPage(),
                )
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _adminPeminjamanNavigator,
          routes: [
            GoRoute(
              path: '/peminjaman-admin',
              name: 'peminjaman-admin',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _adminTransaksiNavigator,
          routes: [
            GoRoute(
              path: '/transaksi-admin',
              name: 'transaksi-admin',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => UserScaffoldPage(
        navigationShell: navigationShell,
      ),
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: _userDashboardNavigator,
          routes: [
            GoRoute(
              path: '/user',
              name: 'dashboard-user',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _userDataBarangNavigator,
          routes: [
            GoRoute(
              path: '/data-barang-user',
              name: 'data-barang-user',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _userPinjamNavigator,
          routes: [
            GoRoute(
              path: '/pinjam-user',
              name: 'pinjam-user',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _userTransaksiNavigator,
          routes: [
            GoRoute(
              path: '/transaksi-user',
              name: 'transaksi-user',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
