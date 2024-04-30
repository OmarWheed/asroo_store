import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:store_app/core/app/app_cubit/cubit/app_cubit_cubit.dart';

final sl = GetIt.instance;
Future<void> setupInjection() async {
  await _initCore();
}

Future<void> _initCore() async {
  sl.registerFactory(AppCubitCubit.new);
}
