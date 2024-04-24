import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/common/screens/no_network_screnns.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';
import 'package:store_app/core/style/fonts/font_weight_helper.dart';

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
              builder: (_, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              title: 'Asroo Store',
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("Home"),
                ),
                body: const Center(
                  child: Column(
                    children: [
                      //!Old
                      Text(
                        "Old Test Font",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "اختبار الخط ",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      //!New
                      Text(
                        "Old Test Font",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontFamilyHelper.poppinsEnglish,
                          fontWeight: FontWeightHelper.regular,
                        ),
                      ),
                      Text(
                        "اختبار الخط ",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontFamilyHelper.cairoArabic,
                          fontWeight: FontWeightHelper.regular,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
