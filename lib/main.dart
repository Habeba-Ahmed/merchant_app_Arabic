// ignore_for_file: deprecated_member_use

// import 'package:e_commerce/test.dart';
// import 'package:e_commerce/view/screen/auth/login.dart';
// import 'package:e_commerce/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchant/core/services/myservices.dart';

import 'binding/binding.dart';
import 'core/constant/color.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller= Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          titleTextStyle: TextStyle(
              color: AppColor.grey,
              fontSize: 25,
              fontWeight: FontWeight.bold),
              iconTheme: IconThemeData(color: AppColor.grey),
              elevation: 0.0
        ),
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
            headline2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColor.black),
            bodyText1: TextStyle(
                height : 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            bodyText2: TextStyle(
                height : 2,
                color: AppColor.grey,
                fontSize: 14)),
        primarySwatch: Colors.blue,
      ),
      // home: const TestView(),
      // routes: routes,
      initialBinding: InitialBinding(),
      getPages: routes,
    );
  }
}
