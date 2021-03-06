import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedPriceWidget19.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedCourseTitleWidget19.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedBottomSectionWidget29.dart';

/* Instance Card / Card Title Light
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCardCardTitleLightWidget19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 53.0,
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
              height: 34.0,
              child: GeneratedCourseTitleWidget19(),
            ),
            Positioned(
              left: 0.0,
              top: 38.0,
              right: null,
              bottom: null,
              width: 202.0,
              height: 18.0,
              child: GeneratedPriceWidget19(),
            ),
            Positioned(
              left: 0.0,
              top: 38.0,
              right: null,
              bottom: null,
              width: 66.0,
              height: 15.0,
              child: GeneratedBottomSectionWidget29(),
            )
          ]),
    );
  }
}
