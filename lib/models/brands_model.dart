import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class GetBrands{
  Future<List<brand>> getBrands() async {
    var jsonString = await rootBundle.loadString('assets/json/brands.json');
    var jsonMap = json.decode(jsonString);
    List<brand> ListBrands=[];
    if (jsonMap != null) {
      ListBrands = (jsonMap as List)
          .map((item) => brand.fromJson(item))
          .toList();
    } else {ListBrands = [];}
    return ListBrands;// read , its working
  }
}


class brand{
  late String name_ar;
  late String name_en;
  late String site_en;
  late String site_ar;
  late String logo;
  late bool is_open;
  late int location;
  late String phone;
  brand.fromJson(Map<String,dynamic> json){
    name_ar = json['name_ar'];
    name_en = json['name_en'];
    site_en = json['site_en'];
    site_ar = json['site_ar'];
    logo = json['logo'];
    is_open = json['is_open'];
    location = json['location']??-1;
    phone=json['phone'];
  }
  String get name => Get.locale?.languageCode.startsWith('ar') == true ?name_ar:name_en;
  String get site => Get.locale?.languageCode.startsWith('ar') == true ?site_ar:site_en;
}