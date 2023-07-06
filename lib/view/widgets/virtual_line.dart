import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_ui/controllers/constants/my_colors.dart';
virtual_line(color,top,bottom){
  return Container(margin:   EdgeInsets.only(top: double.parse(top.toString()).h,bottom: double.parse(bottom.toString())).h, color: color, width: 1.0.w,height: 26.0.h, );
}