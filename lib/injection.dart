import 'package:get_it/get_it.dart';
import 'package:peminjaman_barang/features/auth/data/data_source/local/auth_local_data_source.dart';
import 'package:peminjaman_barang/features/auth/data/data_source/remote/auth_api_service.dart';
import 'package:peminjaman_barang/features/auth/data/repository/auth_repository_impl.dart';
import 'package:peminjaman_barang/features/auth/domain/repository/auth_repository.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/admin_login_usecase.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/admin_register_usecase.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/get_uid_usecase.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/get_user_token_usecase.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/set_user_data_usecase.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/user_login_usecase.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/user_logout_usecase.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/user_register_usecase.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/admin_login/admin_login_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/admin_register/admin_register_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/user_login/user_login_bloc.dart';
import 'package:peminjaman_barang/features/auth/presentation/blocs/user_register/user_register_bloc.dart';
import 'package:peminjaman_barang/features/profile/data/data_sources/user_api_service.dart';
import 'package:peminjaman_barang/features/profile/data/repository/user_repository_impl.dart';
import 'package:peminjaman_barang/features/profile/domain/repository/user_repository.dart';
import 'package:peminjaman_barang/features/profile/domain/usecases/get_admin_info_usecase.dart';
import 'package:peminjaman_barang/features/profile/domain/usecases/get_user_info_usecase.dart';
import 'package:peminjaman_barang/features/profile/presentation/blocs/admin/admin_bloc.dart';
import 'package:peminjaman_barang/features/profile/presentation/blocs/user/user_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Shared Preferences
  injector.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  // Data Source
  injector.registerSingleton<AuthApiService>(AuthApiService());
  injector
      .registerSingleton<AuthLocalDataSource>(AuthLocalDataSource(injector()));
  injector.registerSingleton<UserApiService>(UserApiService(injector()));

  // Repositories
  injector.registerSingleton<AuthRepository>(
      AuthRepositoryImpl(injector(), injector()));
  injector.registerSingleton<UserRepository>(UserRepositoryImpl(injector()));

  // UseCases
  injector.registerSingleton<AdminLoginUseCase>(AdminLoginUseCase(injector()));
  injector.registerSingleton<AdminRegisterUseCase>(
      AdminRegisterUseCase(injector()));
  injector.registerSingleton<UserLoginUseCase>(UserLoginUseCase(injector()));
  injector
      .registerSingleton<UserRegisterUseCase>(UserRegisterUseCase(injector()));
  injector.registerSingleton<GetUidUseCase>(GetUidUseCase(injector()));
  injector
      .registerSingleton<GetUserTokenUseCase>(GetUserTokenUseCase(injector()));
  injector
      .registerSingleton<SetUserDataUseCase>(SetUserDataUseCase(injector()));
  injector.registerSingleton<UserLogoutUseCase>(UserLogoutUseCase(injector()));
  injector
      .registerSingleton<GetUserInfoUseCase>(GetUserInfoUseCase(injector()));
  injector
      .registerSingleton<GetAdminInfoUseCase>(GetAdminInfoUseCase(injector()));

  // Blocs
  injector.registerFactory<AdminLoginBloc>(
      () => AdminLoginBloc(injector(), injector()));
  injector
      .registerFactory<AdminRegisterBloc>(() => AdminRegisterBloc(injector()));
  injector
      .registerFactory<UserRegisterBloc>(() => UserRegisterBloc(injector()));
  injector.registerFactory<UserLoginBloc>(
      () => UserLoginBloc(injector(), injector()));
  injector.registerFactory<UserBloc>(() => UserBloc(injector()));
  injector.registerFactory<AdminBloc>(() => AdminBloc(injector()));
}
