import 'package:get/get.dart';

class MyLocal implements Translations{
  @override
  Map<String, Map<String, String>> get keys =>{
    (Get.locale?.languageCode.startsWith('ar')==true)?"ar":"":{
      "Subscribers":"تم متابعتهم",
      "prodacts":"منتجات",
      "related ads":"إعلانات مرتبطة",
      "km":"كم",
      "meter":"متر"
    },
    (Get.locale?.languageCode.startsWith('en')==true)?"en":"":{
      "Subscribers":"Subscribers",
      "prodacts":"Prodacts",
      "related ads":"Related ads",
      "km":"KM",
      "meter":"M"
    },
  };
}