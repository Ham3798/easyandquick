import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedsearch_completewidget/generated/GeneratedCardCardTitleLightWidget12.dart';
import 'package:flutterapp/easyandquickapp/generatedsearch_completewidget/generated/GeneratedCardCardImageWidget12.dart';

/* Instance Card / Card Content
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCardCardContentWidget12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Container(
        width: 295.0,
        height: 60.0,
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
                width: 75.00001525878906,
                height: 75.0,
                child: GeneratedCardCardImageWidget12(),
              ),
              Positioned(
                left: 95.00001525878906,
                top: 0.0,
                right: null,
                bottom: null,
                width: 200.0,
                height: 75.0,
                child: GeneratedCardCardTitleLightWidget12(),
              )
            ]),
      ),
    );
  }
}
