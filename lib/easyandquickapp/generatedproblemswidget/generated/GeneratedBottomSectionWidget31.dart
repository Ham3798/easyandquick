import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedLevelWidget27.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedRatingWidget31.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedSeparatorWidget42.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedSeparatorWidget43.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedAuthorNameWidget21.dart';

/* Frame Bottom Section
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedBottomSectionWidget31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71.0,
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
              child: GeneratedRatingWidget31(),
            ),
            Positioned(
              left: 0.0,
              top: 6.0,
              right: null,
              bottom: null,
              width: 3.0,
              height: 3.0,
              child: GeneratedSeparatorWidget42(),
            ),
            Positioned(
              left: 8.0,
              top: 1.0,
              right: null,
              bottom: null,
              width: 60.0,
              height: 15.0,
              child: GeneratedAuthorNameWidget21(),
            ),
            Positioned(
              left: 129.0,
              top: 6.0,
              right: null,
              bottom: null,
              width: 3.0,
              height: 3.0,
              child: GeneratedSeparatorWidget43(),
            ),
            Positioned(
              left: 71.0,
              top: 1.0,
              right: null,
              bottom: null,
              width: 5.0,
              height: 18.0,
              child: GeneratedLevelWidget27(),
            )
          ]),
    );
  }
}
