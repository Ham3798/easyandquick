import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedsample2widget/generated/GeneratedImageWidget1.dart';
import 'package:flutterapp/easyandquickapp/generatedsample2widget/generated/GeneratedOutlineWidget1.dart';
import 'package:flutterapp/easyandquickapp/generatedsample2widget/generated/GeneratedFrame1Widget2.dart';

/* Frame left
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedLeftWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 720.0,
      height: 900.0,
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
              width: 720.0,
              height: 900.0,
              child: GeneratedImageWidget1(),
            ),
            Positioned(
              left: 110.0,
              top: 200.0,
              right: null,
              bottom: null,
              width: 500.0,
              height: 500.0,
              child: GeneratedOutlineWidget1(),
            ),
            Positioned(
              left: 158.0,
              top: 240.0,
              right: null,
              bottom: null,
              width: 405.0,
              height: 420.0,
              child: GeneratedFrame1Widget2(),
            )
          ]),
    );
  }
}
