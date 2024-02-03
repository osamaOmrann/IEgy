import 'package:get_it/get_it.dart';
import 'package:iegy/core/bloc/cubit/global_cubit.dart';
import 'package:iegy/core/database/cache/cache_helper.dart';
import 'package:iegy/features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:iegy/features/nav_bar/presentation/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:iegy/features/splash/presentation/cubit/welcome_cubit.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton(() => GlobalCubit());
  sl.registerLazySingleton(() => LoginCubit());
  sl.registerLazySingleton(() => NavBarCubit());
  sl.registerLazySingleton(() => WelcomeCubit());
  sl.registerLazySingleton(() => CacheHelper());
}