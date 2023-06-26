import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_ui/controllers/constants/my_colors.dart';
import 'package:search_ui/models/brands_model.dart';

class GridItem extends StatelessWidget{
  late brand my_brand;
  GridItem(this.my_brand);
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 233,
      width: 180,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black,
                        offset: Offset(3, 3)),
                  ],
                  borderRadius: BorderRadius.circular(1000)
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  child: Image(
                    image: AssetImage(my_brand.logo),
                    height: 150,
                    width: 150,
                  ),
                ),
              ),

              Visibility(
                  visible: my_brand.location!=null&&my_brand.location>0,
                  child: CircleAvatar(
                  backgroundColor: color_1,
                  radius: 22,
                  child: (Get.locale?.languageCode.startsWith('ar')==true)?
                  Text("${my_brand.location} كم",style: TextStyle(color:color_5,fontSize: 11))
                  :Text("${my_brand.location} km",style: TextStyle(color:color_5,fontSize: 11),
                  ),)
              )
            ],
          ),
          const SizedBox(height: 2,),
          Container(height: 4,width: 30,decoration: BoxDecoration(
            color:my_brand.is_open?Colors.green:Colors.red,
            borderRadius:  BorderRadius.all(Radius.circular(30.0)),),),
          const SizedBox(height: 2,),
          Text(my_brand.name,style:
          (Get.locale?.languageCode.startsWith('ar')==true)?
          TextStyle(fontSize: 25,color: Colors.white,fontFamily:"assets/fonts/ar/Almarai-Bold.ttf" ,fontWeight: FontWeight.bold)
          :TextStyle(fontSize: 26,color: Colors.white,fontFamily:"assets/fonts/en/SourceSansPro-Bold.ttf" ,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }

}