import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/admin_login/admin_login_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/user_login/user_login_bloc.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    context.read<AdminLoginBloc>().add(AdminLoginAppOpened());
    context.read<UserLoginBloc>().add(UserLoginAppOpened());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AdminLoginBloc, AdminLoginState>(
          listener: (context, state) {
            if (state is AdminLoginSuccess) {
              context.goNamed('dashboard');
            }
          },
        ),
        BlocListener<UserLoginBloc, UserLoginState>(
          listener: (context, state) {
            if (state is UserLoginSuccess) {
              context.goNamed('dashboard');
            }
          },
        )
      ],
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, right: 37, left: 37),
                padding:
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xfff6cb7d),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.menu,
                      size: 36,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: const Color(0xff2e2d51),
                            ),
                          ),
                          child: const Text(
                            'Home',
                            style: TextStyle(
                              color: Color(0xff2e2d51),
                            ),
                          ),
                        ),
                        const SizedBox(width: 24),
                        GestureDetector(
                          onTap: () => context.goNamed('auth'),
                          child: const Text(
                            'Masuk / Daftar',
                            style: TextStyle(
                              color: Color(0xff2e2d51),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 48),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 500,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 75, vertical: 24),
                  color: const Color(0xffF6CB7D),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ayo Saling',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const Text(
                            'Pinjam Barang',
                            style: TextStyle(
                              fontSize: 50,
                              color: Color(0xff2E2D51),
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                height: 120,
                                width: 300,
                                child: Text(
                                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ''',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () => context.goNamed('auth'),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(180, 48),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  backgroundColor: const Color(0xff2E2D51),
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text(
                                  'Mulai Sekarang',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/landing-pic.png',
                        width: 500,
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 8, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          'Follow Us',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/twitter.png'),
                              const SizedBox(width: 8),
                              const Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 16),
                          Row(
                            children: [
                              Image.asset('assets/images/instagram.png'),
                              const SizedBox(width: 8),
                              const Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
