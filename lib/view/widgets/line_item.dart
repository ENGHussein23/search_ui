import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_ui/models/brands_model.dart';

class LineItem extends StatelessWidget{
  late brand my_brand;

  LineItem(this.my_brand);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Expanded(flex:3,child: Row(
           children: [
             Container(height: 30,width: 4,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:my_brand.is_open?Colors.green:Colors.red,),),
             const SizedBox(width: 5,),
             Container(height:30,width:30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),image: DecorationImage(
                 image: AssetImage(my_brand.logo),fit: BoxFit.cover
             )),),
             const SizedBox(width: 5,),
             Text(my_brand.name,style: TextStyle(color: Colors.white),),
           ],
         )),
          Expanded(flex:2,child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (my_brand.location!=null&&my_brand.location>0)?Container(
                padding: EdgeInsets.only(right: 4,left: 4),
                height:18,width:18,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),image: DecorationImage(
                  image: AssetImage("assets/images/icons/Asset 1@2x.png"),fit: BoxFit.cover
              )),):Container(padding: EdgeInsets.only(right: 4,left: 4),
                height:18,width:18,),
              const SizedBox(width: 6,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(my_brand.site,style: TextStyle(color: Colors.white),),
                  Visibility(
                    visible: my_brand.location!=null&&my_brand.location>0,
                  child:
                  (Get.locale?.languageCode.startsWith('ar')==true)?
                  Text("${my_brand.location} كم",style: TextStyle(color: Colors.amber,fontSize: 12),)
                  :Text("${my_brand.location} Km",style: TextStyle(color: Colors.amber,fontSize: 12),) ,),
                ],
              )
            ],
          )),
         Expanded(flex:2,child:  Column( mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.end,children: [Text("${my_brand.phone}",textDirection: TextDirection.ltr,style: TextStyle(color: Colors.amber),)],))
        ],
      ),
    );
  }

}