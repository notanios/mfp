import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/routes/app_pages.dart';

import 'di/injection_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) async {
    await initDi();
    runApp(const MyApp());
  });
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
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