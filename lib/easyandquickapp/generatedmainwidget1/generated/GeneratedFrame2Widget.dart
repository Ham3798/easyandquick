import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedFrame1Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedBaseProfileWidget1.dart';

/* Frame Frame 2
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFrame2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Container(
        width: 249.375,
        height: 35.0,
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
                width: 40.0,
                height: 40.0,
                child: GeneratedBaseProfileWidget1(),
              ),
              Positioned(
                left: 60.0,
                top: 3.5,
                right: null,
                bottom: null,
                width: 225.0,
                height: 33.0,
                child: GeneratedFrame1Widget(),
              )
            ]),
      ),
    );
  }
}
