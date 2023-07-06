import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:search_ui/controllers/constants/my_colors.dart';
import 'package:search_ui/models/brands_model.dart';

class GridItem extends StatelessWidget{
  late brand my_brand;
  GridItem(this.my_brand);
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 233.h,
      width: 179.9.w,
      decoration: BoxDecoration(
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black,
                        offset: Offset(3, 3)),
                  ],
                  borderRadius: BorderRadius.circular(99999)
                ),
                child: Image(
                  image: AssetImage(my_brand.logo),
                  height: 155.w,
                  width: 155.w,
                )
              ),
              Visibility(
                  visible: my_brand.location!=null&&my_brand.location>0,
                  child:
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: color_1,
                    ),
                    child: Center(
                    child:
                        Text("${my_brand.location}\n${'km'.tr}",style: TextStyle(color:color_5,fontWeight: FontWeight.bold,fontSize: 11.sp)),
              )
              )
              )
            ],
          ),
          SizedBox(height: 5.h,),
          Container(height: 4.h,width: 30.w,decoration: BoxDecoration(
            color:my_brand.is_open?Colors.green:Colors.red,
            borderRadius:  const BorderRadius.all(Radius.circular(30.0)),),),
          SizedBox(height: 2.h,),
          Text(my_brand.name,style:
          (Get.locale?.languageCode.startsWith('ar')==true)?
          TextStyle(fontSize: 25.sp,color: Colors.white,fontFamily:"assets/fonts/ar/Almarai-Bold.ttf" ,fontWeight: FontWeight.bold)
          :TextStyle(fontSize: 26.sp,color: Colors.white,fontFamily:"assets/fonts/en/SourceSansPro-Bold.ttf" ,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}