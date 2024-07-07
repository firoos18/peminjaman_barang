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
import 'package:peminjaman_barang/features/barang/data/data_sources/barang_api_service.dart';
import 'package:peminjaman_barang/features/barang/data/repository/barang_repository_impl.dart';
import 'package:peminjaman_barang/features/barang/domain/repository/barang_repository.dart';
import 'package:peminjaman_barang/features/barang/domain/usecases/add_barang_admin_usecase.dart';
import 'package:peminjaman_barang/features/barang/domain/usecases/delete_barang_usecase.dart';
import 'package:peminjaman_barang/features/barang/domain/usecases/get_barang_admin_usecase.dart';
import 'package:peminjaman_barang/features/barang/domain/usecases/get_barang_by_id_usecase.dart';
import 'package:peminjaman_barang/features/barang/domain/usecases/update_barang_usecase.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/add_barang_admin/add_barang_admin_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/barang_admin/barang_admin_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/barang_by_id/barang_by_id_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/delete_barang/delete_barang_bloc.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/update_barang/update_barang_bloc.dart';
import 'package:peminjaman_barang/features/peminjaman/data/data_sources/peminjaman_api_service.dart';
import 'package:peminjaman_barang/features/peminjaman/data/repository/peminjaman_repository_impl.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/repository/peminjaman_repository.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/usecases/get_all_peminjaman_usecase.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/usecases/pinjam_barang_usecase.dart';
import 'package:peminjaman_barang/features/peminjaman/presentation/blocs/get_all_peminjaman/get_all_peminjaman_bloc.dart';
import 'package:peminjaman_barang/features/peminjaman/presentation/blocs/pinjam_barang/pinjam_barang_bloc.dart';
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
  injector.registerSingleton<BarangApiService>(BarangApiService(injector()));
  injector.registerSingleton<PeminjamanApiService>(
      PeminjamanApiService(injector()));

  // Repositories
  injector.registerSingleton<AuthRepository>(
      AuthRepositoryImpl(injector(), injector()));
  injector.registerSingleton<UserRepository>(UserRepositoryImpl(injector()));
  injector
      .registerSingleton<BarangRepository>(BarangRepositoryImpl(injector()));
  injector.registerSingleton<PeminjamanRepository>(
      PeminjamanRepositoryImpl(injector()));

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
  injector.registerSingleton<GetBarangAdminUseCase>(
      GetBarangAdminUseCase(injector()));
  injector.registerSingleton<AddBarangAdminUseCase>(
      AddBarangAdminUseCase(injector()));
  injector
      .registerSingleton<DeleteBarangUseCase>(DeleteBarangUseCase(injector()));
  injector
      .registerSingleton<UpdateBarangUseCase>(UpdateBarangUseCase(injector()));
  injector.registerSingleton<GetBarangByIdUseCase>(
      GetBarangByIdUseCase(injector()));
  injector.registerSingleton<GetAllPeminjamanUseCase>(
      GetAllPeminjamanUseCase(injector()));
  injector
      .registerSingleton<PinjamBarangUseCase>(PinjamBarangUseCase(injector()));

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
  injector.registerFactory<BarangAdminBloc>(() => BarangAdminBloc(injector()));
  injector.registerFactory<BarangByIdBloc>(() => BarangByIdBloc(injector()));
  injector.registerFactory<AddBarangAdminBloc>(
      () => AddBarangAdminBloc(injector()));
  injector
      .registerFactory<DeleteBarangBloc>(() => DeleteBarangBloc(injector()));
  injector
      .registerFactory<UpdateBarangBloc>(() => UpdateBarangBloc(injector()));
  injector.registerFactory<GetAllPeminjamanBloc>(
      () => GetAllPeminjamanBloc(injector()));
  injector
      .registerFactory<PinjamBarangBloc>(() => PinjamBarangBloc(injector()));
}
