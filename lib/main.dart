import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peminjaman_barang/core/router/router.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/admin_login/admin_login_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/admin_register/admin_register_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/user_login/user_login_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/user_register/user_register_bloc.dart';
import 'package:peminjaman_barang/features/profile/presentation/blocs/admin/admin_bloc.dart';
import 'package:peminjaman_barang/features/profile/presentation/blocs/user/user_bloc.dart';
import 'package:peminjaman_barang/injection.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  await dotenv.load(fileName: ".env");
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
