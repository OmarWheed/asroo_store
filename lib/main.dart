import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/asroo_store_app.dart';
import 'package:store_app/core/app/bloc_observer.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/di/injection_core.dart';
import 'package:store_app/core/services/shared/shared_pref.dart';
import 'package:store_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Env
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  //Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await SharedPref().instantiatePreferences();
  await setupInjection();
  Bloc.observer = AppBlocObserver();

  //Keep app in portrait mode
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((_) {
    //run application
    runApp(const AsrooStoreApp());
  });
}
