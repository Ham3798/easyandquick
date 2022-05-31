import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardCardContentWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardProgressBarWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedFrame31Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedFrame30Widget.dart';

/* Instance Card / Pre Build
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCardPreBuildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.0,
      height: 170.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                color: Color.fromARGB(255, 252, 252, 255),
              ),
            ),
            Positioned(
              left: 15.0,
              top: 15.0,
              right: null,
              bottom: null,
              width: 295.0,
              height: 60.0,
              child: GeneratedCardCardContentWidget(),
            ),
            Positioned(
              left: 15.0,
              top: 90.0,
              right: null,
              bottom: null,
              width: 295.0,
              height: 35.0,
              child: GeneratedFrame30Widget(),
            ),
            Positioned(
              left: 15.0,
              top: 140.0,
              right: null,
              bottom: null,
              width: 284.0,
              height: 15.0,
              child: GeneratedCardProgressBarWidget(),
            ),
            Positioned(
              left: 15.0,
              top: 170.0,
              right: null,
              bottom: null,
              width: 295.0,
              height: 18.0,
              child: GeneratedFrame31Widget(),
            )
          ]),
    );
  }
}