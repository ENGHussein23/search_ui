import 'package:flutter/material.dart';
import 'package:search_ui/controllers/constants/my_colors.dart';
virtual_line(color,top,bottom){
  return Container(margin:   EdgeInsets.only(top: double.parse(top.toString()),bottom: double.parse(bottom.toString())), color: color, width: 1,height: 26, );
}