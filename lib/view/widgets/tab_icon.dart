import 'package:flutter/material.dart';

class TabIcon extends StatelessWidget{
  late String tab_icon;
  late double tab_width;
  TabIcon(this.tab_icon,this.tab_width);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      height: 30,
      width: tab_width,
      child: Image(image: AssetImage(tab_icon),),
    );
  }

}