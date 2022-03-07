import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';
import 'package:mdf_volunteers/presentation/welcome/welcome_screen.dart';
import 'package:mdf_volunteers/routes/app_pages.dart';

import 'di/injection_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) async {
    await initDi();
    runApp(const MyApp());
  });
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: MaterialColor(AppColors.primarySwatch[50]!.value, AppColors.primarySwatch),
        //visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.black
      ),
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: Routes.WELCOME,
      getPages: AppPages.routes,
    );
  }
}
