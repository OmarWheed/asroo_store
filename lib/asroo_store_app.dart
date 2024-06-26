import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/common/screens/no_network_screnns.dart';
import 'package:store_app/core/language/app_localizations_setup.dart';
import 'package:store_app/core/routes/app_routes.dart';
import 'package:store_app/core/style/theme/app_theme.dart';

class AsrooStoreApp extends StatelessWidget {
  const AsrooStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, child) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
                theme: themeDark(),

                //localization

                locale: const Locale("ar"),
                localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
                supportedLocales: AppLocalizationsSetup.supportedLocales,
                localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                initialRoute: PagesName.testPageOne,
                onGenerateRoute: AppRoutes.onGenerateRoute,
                builder: (_, widget) {
                  //when button or click in any of the screens the text form will close
                  return GestureDetector(
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: Scaffold(
                      body: Builder(
                        builder: (context) {
                          ConnectivityController.instance.init();
                          return widget!;
                        },
                      ),
                    ),
                  );
                },
                title: 'Asroo Store',
                debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                home: Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("Home"),
                  ),
                )),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            title: 'No Internet',
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
