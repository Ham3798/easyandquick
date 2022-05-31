import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedqnawidget/generated/GeneratedRectangle143Widget5.dart';
import 'package:flutterapp/easyandquickapp/generatedqnawidget/generated/GeneratedWidget20.dart';

/* Group Group 21
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup21Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedQna_twoWidget'),
      child: Container(
        width: 59.0,
        height: 18.0,
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
                width: 59.0,
                height: 18.0,
                child: GeneratedRectangle143Widget5(),
              ),
              Positioned(
                left: 11.0,
                top: 4.320000171661377,
                right: null,
                bottom: null,
                width: 42.0,
                height: 14.359999656677246,
                child: GeneratedWidget20(),
              )
            ]),
      ),
    );
  }
}