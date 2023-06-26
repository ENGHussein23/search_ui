import 'package:flutter/material.dart';
import 'package:search_ui/controllers/constants/my_colors.dart';
import 'package:search_ui/controllers/get_controllers/home_page_controller.dart';
import 'package:search_ui/view/widgets/grid_item.dart';
import 'package:search_ui/view/widgets/line_item.dart';
import 'package:search_ui/view/widgets/tab_icon.dart';
import 'package:search_ui/view/widgets/virtual_line.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget{
  final homePagController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double tab_width=screenWidth*0.0925;
    double between_tab=screenWidth*0.02;
    return Scaffold(
      // search and tab bar
      appBar:PreferredSize(
        preferredSize: Size(screenWidth,110),
        child:
        Card(
          elevation: 30,
          margin: EdgeInsets.all(0),
          child: Container(
            width: screenWidth,
            height: 110,
            color: color_3,
            padding: const EdgeInsets.only(top: 38,right: 15,left: 15),
            child: Stack(
              children: [
                // tab bar
                Positioned(
                    bottom: 0.0,
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
                            margin: EdgeInsets.only(bottom: 1),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: color_6,width: 2))
                            ),
                            child: (Get.locale?.languageCode.startsWith('ar')==true)?
                            Text("تم متابعتهم", style: TextStyle(color:color_6,fontFamily: "assets/fonts/ar/Almarai-Bold.ttf"),)
                                :Text("Subscribers", style: TextStyle(color:color_6,fontFamily: "assets/fonts/en/SourceSansPro-Bold.ttf"),),
                          ),
                          const SizedBox(width: 5,),
                          virtual_line(color_3,2,2),
                          Obx(() {
                            if(homePagController.ListStyle.value==1) {
                              return GestureDetector(
                                onTap: (){homePagController.ListStyle.value=0;},
                                child: TabIcon("assets/images/icons/Asset 2@2x.png",tab_width),
                              );
                            } else if(homePagController.ListStyle.value==0) {
                              return GestureDetector(
                                onTap: (){homePagController.ListStyle.value=1;},
                                child: TabIcon("assets/images/icons/Asset 6@2x.png",tab_width),
                              );
                            }
                            return Container();
                          }),
                          virtual_line(color_3,2,2),
                          Obx(() {
                            if(homePagController.ListStyle.value==1) {
                              return GestureDetector(
                                onTap: (){homePagController.ListStyle.value=0;},
                                child: TabIcon("assets/images/icons/Asset 9@2x.png",tab_width),
                              );
                            } else if(homePagController.ListStyle.value==0) {
                              return GestureDetector(
                                onTap: (){homePagController.ListStyle.value=1;},
                                child: TabIcon("assets/images/icons/Asset 5@2x.png",tab_width),
                              );
                            }
                            return Container();
                          }),
                          virtual_line(color_3,2,2),
                          TabIcon("assets/images/icons/Asset 7@2x.png",tab_width),
                          virtual_line(color_3,2,2),
                          TabIcon("assets/images/icons/Asset 4@2x.png",tab_width),
                          virtual_line(color_1,0,0),
                        ],
                      ),
                    ),
                     SizedBox(width: between_tab,),
                    (Get.locale?.languageCode.startsWith('ar')==true)?
                    Text("منتجات",style: TextStyle(color:getColor(4,153),fontFamily: "assets/fonts/ar/Almarai-Regular.ttf"),)
                        :Text("Prodacts",style: TextStyle(color:getColor(4,153),fontFamily: "assets/fonts/en/SourceSansPro-Regular.ttf"),),
                     SizedBox(width: between_tab,),
                    (Get.locale?.languageCode.startsWith('ar')==true)?
                    Text("إعلانات مرتبطة",style: TextStyle(color:getColor(4,153),fontFamily: "assets/fonts/ar/Almarai-Regular.ttf"))
                        :Text("Related ads",style: TextStyle(color:getColor(4,153),fontFamily: "assets/fonts/en/SourceSansPro-Regular.ttf")),
                  ],
                )),
                // search bar  screenWidht-30 * 42
                Container(
                  height: 42,
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
                        height:42,
                        width: 42,
                        padding: const EdgeInsets.all(7),
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
                        padding: const EdgeInsets.all(7),
                        margin: (Get.locale?.languageCode.startsWith('ar')==true)?
                        const EdgeInsets.only(left: 10):const EdgeInsets.only(right: 10),
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
        height: screenHeight-110,
        width: screenWidth,
        padding: EdgeInsets.only(left: 15,right: 15),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/BG.png'), fit: BoxFit.cover,),),
        child:SingleChildScrollView(
            child:Column(
              children:  [
                const SizedBox(height: 30,),
               Obx(() {
                 if(homePagController.ListLength.value==0.1){return const CircularProgressIndicator();}
                 if(homePagController.ListStyle.value==0){
                   return Center(
                     child: Container(
                       // decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1)),
                       width: double.infinity,
                       child: LayoutBuilder(
                         builder: (context, constraints) {
                           //LayoutBuilder item width if we want to use it for the width of the item in the grid
                           // like if we want to show just three items in a single row in the wrap
                           // then we use the itemWidth for the width of the item

                           // final itemWidth = (constraints.maxWidth - 32) / 3;
                           // print(itemWidth.toString());
                           return Center(
                             child: Wrap(
                               spacing: 0.0,
                               runSpacing:0,
                               children: List.generate(homePagController.ListBrands.length, (index) {
                                 return GridItem(homePagController.ListBrands[index]);
                               }),
                             ),
                           );
                         },
                       ),
                     ),
                   );
                 }
                 else if(homePagController.ListStyle.value==1){
                   return ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
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