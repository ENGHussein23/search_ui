import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:search_ui/models/brands_model.dart';
class LineItem extends StatelessWidget{
  late brand my_brand;
  LineItem(this.my_brand);
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: Get.width.w,
      height: 50.h,
      margin: EdgeInsets.only(right: 12.w,left: 12.w),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white30))),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(flex:3,child: Row(
              children: [
                Container(height: 30.h,width: 4.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:my_brand.is_open?Colors.green:Colors.red,),),
                SizedBox(width: 5.w,),
                Container(height:30.w,width:30.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),image: DecorationImage(
                    image: AssetImage(my_brand.logo),fit: BoxFit.cover
                )),),
                SizedBox(width: 5.w,),
                Text(my_brand.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18.sp),),
              ],
            )),
            Expanded(flex:2,child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (my_brand.location!=null&&my_brand.location>0)?Container(
                  padding: EdgeInsets.only(right: 4.w,left: 4.w),
                  height:18.h,width:18.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),image: const DecorationImage(
                    image: AssetImage("assets/images/icons/Asset 1@2x.png"),fit: BoxFit.cover
                )),):Container(padding: EdgeInsets.only(right: 4.w,left: 4.w),
                  height:18.h,width:18.w,),
                SizedBox(width: 6.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(my_brand.site,style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                    Visibility(
                      visible: my_brand.location!=null&&my_brand.location>0,
                      child:
                      Text("${my_brand.location} ${'km'.tr}",style: TextStyle(color: Colors.amber,fontSize: 12.sp),),
                    )],
                )
              ],
            )),
            Expanded(flex:2,child:  Column( mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.end,children: [Text("${my_brand.phone}",textDirection: TextDirection.ltr,style: TextStyle(color: Colors.amber,fontSize: 18.sp),)],))
          ],
        ),
      ),
    );
  }
}