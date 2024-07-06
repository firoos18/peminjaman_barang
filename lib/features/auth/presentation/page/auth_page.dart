import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:peminjaman_barang/core/commons/widgets/custom_loading_indicator.dart';
import 'package:peminjaman_barang/features/auth/data/models/login_model.dart';
import 'package:peminjaman_barang/features/auth/data/models/register_model.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/admin_login/admin_login_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/admin_register/admin_register_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/user_login/user_login_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/user_register/user_register_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();
  final TextEditingController _alamatController = TextEditingController();

  bool isAdmin = true;
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<AdminRegisterBloc, AdminRegisterState>(
            listener: (context, state) {
              if (state is AdminRegisterLoading) {
                showDialog(
                  context: context,
                  builder: (context) => const CustomLoadingIndicator(),
                );
              } else if (state is AdminRegisterFailed) {
                context.pop();
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.message!)));
              } else {
                setState(() {
                  isLogin = true;

                  _emailController.clear();
                  _passwordController.clear();
                  _repeatPasswordController.clear();
                  _nameController.clear();
                });
                context.pop();
              }
            },
          ),
          BlocListener<AdminLoginBloc, AdminLoginState>(
            listener: (context, state) {
              if (state is AdminLoginLoading) {
                showDialog(
                  context: context,
                  builder: (context) => const CustomLoadingIndicator(),
                );
              } else if (state is AdminLoginFailed) {
                context.pop();
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.message!)));
              } else {
                context.goNamed('dashboard-admin');
              }
            },
          ),
          BlocListener<UserLoginBloc, UserLoginState>(
            listener: (context, state) {
              if (state is UserLoginLoading) {
                showDialog(
                  context: context,
                  builder: (context) => const CustomLoadingIndicator(),
                );
              } else if (state is UserLoginFailed) {
                context.pop();
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.message!)));
              } else {
                context.goNamed('dashboard-user');
              }
            },
          ),
          BlocListener<UserRegisterBloc, UserRegisterState>(
            listener: (context, state) {
              if (state is UserRegisterLoading) {
                showDialog(
                  context: context,
                  builder: (context) => const CustomLoadingIndicator(),
                );
              } else if (state is UserRegisterFailed) {
                context.pop();
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.message!)));
              } else {
                setState(() {
                  isLogin = true;

                  _emailController.clear();
                  _passwordController.clear();
                  _repeatPasswordController.clear();
                  _nameController.clear();
                });
                context.pop();
              }
            },
          ),
        ],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, right: 37, left: 37),
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
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
                      GestureDetector(
                        onTap: () => context.goNamed('landing'),
                        child: const Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xff2e2d51),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
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
                          'Masuk / Daftar',
                          style: TextStyle(
                            color: Color(0xff2e2d51),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                width: 450,
                height: 370,
                padding:
                    const EdgeInsets.symmetric(horizontal: 68, vertical: 32),
                decoration: BoxDecoration(
                  color: const Color(0xfff6cb7d),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        (isAdmin && isLogin)
                            ? "Masuk Admin"
                            : (!isAdmin && isLogin)
                                ? 'Masuk User'
                                : (isAdmin && !isLogin)
                                    ? 'Daftar Admin'
                                    : 'Daftar User',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2e2d51),
                        ),
                      ),
                      const SizedBox(height: 36),
                      Column(
                        children: !isLogin
                            ? [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Text(
                                        "Nama",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff2e2d51),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    TextField(
                                      controller: _nameController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Text(
                                        "Email",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff2e2d51),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    TextField(
                                      controller: _emailController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Text(
                                        "Alamat",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff2e2d51),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    TextField(
                                      controller: _alamatController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Text(
                                        "Password",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff2e2d51),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    TextField(
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Text(
                                        "Konfirmasi Ulang Password",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff2e2d51),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    TextField(
                                      controller: _repeatPasswordController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]
                            : [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Text(
                                        "Username",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff2e2d51),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    TextField(
                                      controller: _emailController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Password",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff2e2d51),
                                            ),
                                          ),
                                          Text(
                                            'Lupa Password?',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff2e2d51),
                                              fontStyle: FontStyle.italic,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    TextField(
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            isLogin
                                ? 'Belum memiliki akun?'
                                : 'Sudah memiliki akun?',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xff2e2d51),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => setState(() {
                              isLogin = !isLogin;
                            }),
                            child: Text(
                              isLogin ? ' Daftar' : ' Masuk',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xff2e2d51),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final String email = _emailController.text.trim();
                  final String name = _nameController.text.trim();
                  final String password = _passwordController.text.trim();
                  final String repeatPassword =
                      _repeatPasswordController.text.trim();
                  final String alamat = _alamatController.text.trim();

                  if (isAdmin && isLogin) {
                    final LoginModel loginModel =
                        LoginModel(email: email, password: password);

                    context
                        .read<AdminLoginBloc>()
                        .add(AdminLoginButtonTapped(loginModel: loginModel));
                  } else if (isAdmin && !isLogin) {
                    final RegisterModel registerModel = RegisterModel(
                      email: email,
                      nama: name,
                      password: password,
                      repeatPassword: repeatPassword,
                      alamat: alamat,
                    );

                    context.read<AdminRegisterBloc>().add(
                        AdminRegisterButtonTapped(
                            registerModel: registerModel));
                  } else if (!isAdmin && isLogin) {
                    final LoginModel loginModel =
                        LoginModel(email: email, password: password);

                    context
                        .read<UserLoginBloc>()
                        .add(UserLoginButtonTapped(loginModel: loginModel));
                  } else {
                    final RegisterModel registerModel = RegisterModel(
                      email: email,
                      nama: name,
                      password: password,
                      repeatPassword: repeatPassword,
                      alamat: alamat,
                    );

                    context.read<UserRegisterBloc>().add(
                        UserRegisterButtonTapped(registerModel: registerModel));
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(230, 48),
                  backgroundColor: const Color(0xffb8b8b8),
                  foregroundColor: Colors.white,
                ),
                child: Text(isLogin ? 'Masuk' : 'Daftar'),
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                isAdmin = !isAdmin;
              }),
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: const BoxDecoration(
                  color: Color(0xff2e2d51),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 36,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        isAdmin ? 'Masuk Sebagai User' : 'Masuk Sebagai Admin',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
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
