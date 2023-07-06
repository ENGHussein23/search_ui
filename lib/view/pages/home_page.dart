import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_ui/controllers/constants/my_colors.dart';
import 'package:search_ui/controllers/get_controllers/home_page_controller.dart';
import 'package:search_ui/view/widgets/grid_item.dart';
import 'package:search_ui/view/widgets/line_item.dart';
import 'package:search_ui/view/widgets/tab_icon.dart';
import 'package:search_ui/view/widgets/virtual_line.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
class HomePage extends StatelessWidget{
  final homePagController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // search and tab bar
      appBar:PreferredSize(
        preferredSize: Size(screenWidth.w,110.h),
        child:
        Card(
          elevation: 30,
          margin: const EdgeInsets.all(0),
          child: Container(
            width: screenWidth.w,
            height: 110.h,
            color: color_3,
            padding: EdgeInsets.only(right: 15.0.w,left: 15.0.w,top: 38.0.h),
            child: Stack(
              children: [
                // tab bar
                Positioned(
                    bottom: 0.0.h,
                    child:
                    Container(
                      width: screenWidth-30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration:BoxDecoration(gradient:
                            LinearGradient(begin: Alignment.topRight, end: Alignment.topLeft,
                              colors:  (Get.locale?.languageCode.startsWith('ar')==true)?
                              [getColor(3, 227), color_2,]:[color_2, getColor(3, 227),],),),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 1.0.h),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: color_6,width: 2.0.w))
                                  ),
                                  child:Text("Subscribers".tr, style: TextStyle(color:color_6,fontFamily: "assets/fonts/ar/Almarai-Bold.ttf",fontSize: 16.sp,fontWeight: FontWeight.bold),)
                                ),
                                SizedBox(width: 5.w,),
                                virtual_line(color_3,2,2),
                                Obx(() {
                                  if(homePagController.ListStyle.value==1) {
                                    return GestureDetector(
                                      onTap: (){homePagController.ListStyle.value=0;},
                                      child: TabIcon("assets/images/icons/Asset 2@2x.png"),
                                    );
                                  } else if(homePagController.ListStyle.value==0) {
                                    return GestureDetector(
                                      onTap: (){homePagController.ListStyle.value=1;},
                                      child: TabIcon("assets/images/icons/Asset 6@2x.png"),
                                    );
                                  }
                                  return Container();
                                }),
                                virtual_line(color_3,2,2),
                                Obx(() {
                                  if(homePagController.ListStyle.value==1) {
                                    return GestureDetector(
                                      onTap: (){homePagController.ListStyle.value=0;},
                                      child: TabIcon("assets/images/icons/Asset 9@2x.png"),
                                    );
                                  } else if(homePagController.ListStyle.value==0) {
                                    return GestureDetector(
                                      onTap: (){homePagController.ListStyle.value=1;},
                                      child: TabIcon("assets/images/icons/Asset 5@2x.png"),
                                    );
                                  }
                                  return Container();
                                }),
                                virtual_line(color_3,2,2),
                                TabIcon("assets/images/icons/Asset 7@2x.png"),
                                virtual_line(color_3,2,2),
                                TabIcon("assets/images/icons/Asset 4@2x.png"),
                                virtual_line(color_1,0,0),
                              ],
                            ),
                          ),
                         Text("prodacts".tr,style: TextStyle(color:getColor(4,153),fontFamily: "assets/fonts/ar/Almarai-Regular.ttf",fontSize: 16.sp),),
                         Text("related ads".tr,style: TextStyle(color:getColor(4,153),fontFamily: "assets/fonts/ar/Almarai-Regular.ttf",fontSize: 16.sp)),
                        ],
                      ),
                    )
                    ),
                // search bar  screenWidht-30 * 42
                Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      color: color_5,
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 12,
                            color: Colors.black38,
                            offset: Offset(0, 3))
                      ] // Make rounded corner of border
                  ),
                  child: Row(
                    children: [
                      // search Icon
                      Container(
                        height:42.h,
                        width: 42.w,
                        padding: EdgeInsets.only(right: 7.0.w,left: 7.0.w,top: 7.0.h,bottom: 7.0.h),
                        decoration:  BoxDecoration(
                            color: color_5,
                            borderRadius: (Get.locale?.languageCode.startsWith('ar')==true)?
                                const BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0))
                                :const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 12,
                                  color: Colors.black38,
                                  offset: Offset(0, 3))
                            ] // Make rounded corner of border
                        ),
                        child: const Image(
                          image: AssetImage("assets/images/icons/Asset 11@2x.png"),
                        ),
                      ),
                      // cancel icon
                      Container(
                        padding: const EdgeInsets.all(7),
                        child: const Image(
                          image: AssetImage("assets/images/icons/x_icons.png"),
                        ),
                      ),
                      Expanded(child: TextFormField(
                      )),
                      // burger icon
                      Container(
                        padding:  EdgeInsets.only(right: 7.0.w,left: 7.0.w,top: 7.0.h,bottom: 7.0.h),
                        margin: (Get.locale?.languageCode.startsWith('ar')==true)?
                         EdgeInsets.only(left: 10.0.w): EdgeInsets.only(right: 10.0.w),
                        child: const Image(
                          image: AssetImage("assets/images/icons/Asset 10@2x.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: screenHeight-110.0.h,
        width: screenWidth,
        decoration:  const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/BG.png'), fit: BoxFit.cover,),),
        child:SingleChildScrollView(
            child:Column(
              children:  [
                SizedBox(height: 30.0.h,),
               Obx(() {
                 if(homePagController.ListLength.value==0.1){
                   return const CircularProgressIndicator();
                 }
                 if(homePagController.ListStyle.value==0){
                   return Container(
                       width: double.infinity,
                       child: Center(
                             child: Wrap(
                               spacing: 0.0,
                               runSpacing:0,
                               children: List.generate(homePagController.ListBrands.length, (index) {
                                 return GridItem(homePagController.ListBrands[index]);
                               }),
                             ),
                       ),
                     );
                 }
                 else if(homePagController.ListStyle.value==1){
                   return ListView.builder(
                     shrinkWrap: true,
                     physics: const NeverScrollableScrollPhysics(),
                     itemCount: homePagController.ListBrands.length,
                     itemBuilder: (context, index) => LineItem(homePagController.ListBrands[index]),
                   );
                 }
                 return Container();
               }),
              ],
            )
        ),
      ),
    );
  }
}