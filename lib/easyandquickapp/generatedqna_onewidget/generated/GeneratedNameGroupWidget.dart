import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedqna_onewidget/generated/GeneratedPoetriLazuzardiWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedqna_onewidget/generated/GeneratedSmallBadgeWidget.dart';

/* Frame Name Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedNameGroupWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86.0,
      height: 16.0,
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
              width: 39.0,
              height: 21.0,
              child: GeneratedPoetriLazuzardiWidget(),
            ),
            Positioned(
              left: 49.0,
              top: 1.0,
              right: null,
              bottom: null,
              width: 37.0,
              height: 14.0,
              child: GeneratedSmallBadgeWidget(),
            )
          ]),
    );
  }
}