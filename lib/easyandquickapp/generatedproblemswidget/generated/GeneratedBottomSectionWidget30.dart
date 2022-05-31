import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedSeparatorWidget40.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedLevelWidget26.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedSeparatorWidget41.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedRatingWidget30.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedAuthorNameWidget20.dart';

/* Frame Bottom Section
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedBottomSectionWidget30 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67.0,
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
              width: 34.0,
              height: 13.0,
              child: GeneratedRatingWidget30(),
            ),
            Positioned(
              left: 0.0,
              top: 6.0,
              right: null,
              bottom: null,
              width: 3.0,
              height: 3.0,
              child: GeneratedSeparatorWidget40(),
            ),
            Positioned(
              left: 8.0,
              top: 1.0,
              right: null,
              bottom: null,
              width: 61.0,
              height: 15.0,
              child: GeneratedAuthorNameWidget20(),
            ),
            Positioned(
              left: 129.0,
              top: 6.0,
              right: null,
              bottom: null,
              width: 3.0,
              height: 3.0,
              child: GeneratedSeparatorWidget41(),
            ),
            Positioned(
              left: 137.0,
              top: 1.0,
              right: null,
              bottom: null,
              width: 42.0,
              height: 15.0,
              child: GeneratedLevelWidget26(),
            )
          ]),
    );
  }
}