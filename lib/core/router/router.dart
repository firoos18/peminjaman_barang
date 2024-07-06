import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:peminjaman_barang/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:peminjaman_barang/features/auth/presentation/page/auth_page.dart';
import 'package:peminjaman_barang/landing_page.dart';
import 'package:peminjaman_barang/admin_scaffold_page.dart';
import 'package:peminjaman_barang/user_scaffold_page.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _dashboardNavigator =
    GlobalKey(debugLabel: 'dashboard');
final GlobalKey<NavigatorState> _dataBarangNavigator =
    GlobalKey(debugLabel: 'data-barang');
final GlobalKey<NavigatorState> _peminjamanNavigator =
    GlobalKey(debugLabel: 'peminjaman');
final GlobalKey<NavigatorState> _pinjamNavigator =
    GlobalKey(debugLabel: 'pinjam');
final GlobalKey<NavigatorState> _transaksiNavigator =
    GlobalKey(debugLabel: 'transaksi');

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
          navigatorKey: _dashboardNavigator,
          routes: [
            GoRoute(
              path: '/admin',
              name: 'dashboard-admin',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _dataBarangNavigator,
          routes: [
            GoRoute(
              path: '/data-barang-admin',
              name: 'data-barang-admin',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _peminjamanNavigator,
          routes: [
            GoRoute(
              path: '/peminjaman-admin',
              name: 'peminjaman-admin',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _transaksiNavigator,
          routes: [
            GoRoute(
              path: '/transaksi=admin',
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
          navigatorKey: _dashboardNavigator,
          routes: [
            GoRoute(
              path: '/user',
              name: 'dashboard-user',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _dataBarangNavigator,
          routes: [
            GoRoute(
              path: '/data-barang-user',
              name: 'data-barang-user',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _pinjamNavigator,
          routes: [
            GoRoute(
              path: '/pinjam-user',
              name: 'pinjam-user',
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _transaksiNavigator,
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
