import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabIcon extends StatelessWidget{
  late String tab_icon;
  TabIcon(this.tab_icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 7.0.w,left: 7.0.w,top: 7.0.h,bottom: 7.0.h),
      height: 30.h,
      width: 50.w,
      child: Image(image: AssetImage(tab_icon),width: 15.w,height: 15.h,),
    );
  }

}