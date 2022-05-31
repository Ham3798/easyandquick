import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedsearchwidget/generated/GeneratedBadgeWidget2.dart';

/* Instance Base / Badge
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedBaseBadgeWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82.0,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                color: Color.fromARGB(255, 99, 95, 255),
              ),
            ),
            Positioned(
              left: 12.0,
              top: 8.5,
              right: null,
              bottom: null,
              width: 60.0,
              height: 15.0,
              child: GeneratedBadgeWidget2(),
            )
          ]),
    );
  }
}