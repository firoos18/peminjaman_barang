import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peminjaman_barang/core/router/router.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/admin_login/admin_login_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/admin_register/admin_register_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/user_login/user_login_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/user_register/user_register_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/add_barang_admin/add_barang_admin_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/barang_admin/barang_admin_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/barang_by_id/barang_by_id_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/delete_barang/delete_barang_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/update_barang/update_barang_bloc.dart';
import 'package:peminjaman_barang/features/peminjaman/presentation/blocs/get_all_peminjaman/get_all_peminjaman_bloc.dart';
import 'package:peminjaman_barang/features/peminjaman/presentation/blocs/pinjam_barang/pinjam_barang_bloc.dart';
import 'package:peminjaman_barang/features/profile/presentation/blocs/admin/admin_bloc.dart';
import 'package:peminjaman_barang/features/profile/presentation/blocs/user/user_bloc.dart';
import 'package:peminjaman_barang/features/transaksi/presentation/blocs/admin_transaksi/admin_transaksi_bloc.dart';
import 'package:peminjaman_barang/features/transaksi/presentation/blocs/user_transaksi/user_transaksi_bloc.dart';
import 'package:peminjaman_barang/injection.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  setPathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AdminLoginBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<AdminRegisterBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<UserLoginBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<UserRegisterBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<UserBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<AdminBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<BarangAdminBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<BarangByIdBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<AddBarangAdminBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<DeleteBarangBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<UpdateBarangBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<PinjamBarangBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<GetAllPeminjamanBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<AdminTransaksiBloc>(
          create: (_) => injector(),
        ),
        BlocProvider<UserTransaksiBloc>(
          create: (_) => injector(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        routerConfig: router,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
      ),
    );
  }
}
