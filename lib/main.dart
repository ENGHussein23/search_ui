import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:search_ui/controllers/localizations/locale.dart';
import 'package:search_ui/view/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
    designSize: const Size(540, 960),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
    return GetMaterialApp(
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      title: 'Search UI',
      translations: MyLocal(),
      theme: ThemeData(fontFamily:
      (Get.locale?.languageCode.startsWith('ar')==true)?
      'Almarai':'SourceSansPro',),
      home:  HomePage(),
    );
  });
  }
}

