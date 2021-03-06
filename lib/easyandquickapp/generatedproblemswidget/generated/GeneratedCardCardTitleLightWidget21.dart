import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedCourseTitleWidget21.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedPriceWidget21.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedBottomSectionWidget31.dart';

/* Instance Card / Card Title Light
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCardCardTitleLightWidget21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 37.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 202.0,
              height: 18.0,
              child: GeneratedCourseTitleWidget21(),
            ),
            Positioned(
              left: 0.0,
              top: 38.0,
              right: null,
              bottom: null,
              width: 202.0,
              height: 18.0,
              child: GeneratedPriceWidget21(),
            ),
            Positioned(
              left: 0.0,
              top: 22.0,
              right: null,
              bottom: null,
              width: 71.0,
              height: 15.0,
              child: GeneratedBottomSectionWidget31(),
            )
          ]),
    );
  }
}
