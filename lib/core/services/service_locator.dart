import 'package:get_it/get_it.dart';
import 'package:iegy/core/bloc/cubit/global_cubit.dart';
import 'package:iegy/core/database/cache/cache_helper.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton(() => GlobalCubit());
  sl.registerLazySingleton(() => CacheHelper());
}