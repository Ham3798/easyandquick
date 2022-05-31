import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedqna_onewidget/generated/GeneratedLevelWidget13.dart';
import 'package:flutterapp/easyandquickapp/generatedqna_onewidget/generated/GeneratedRatingWidget13.dart';

/* Frame Bottom Section
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedBottomSectionWidget13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 97.0,
      height: 15.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 1.0,
              right: null,
              bottom: null,
              width: 43.0,
              height: 13.0,
              child: GeneratedRatingWidget13(),
            ),
            Positioned(
              left: 48.0,
              top: 1.0,
              right: null,
              bottom: null,
              width: 51.0,
              height: 15.0,
              child: GeneratedLevelWidget13(),
            )
          ]),
    );
  }
}