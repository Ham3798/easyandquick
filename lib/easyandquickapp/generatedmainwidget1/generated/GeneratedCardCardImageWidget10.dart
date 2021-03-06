import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedEllipse16Widget9.dart';

/* Instance Card / Card Image
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCardCardImageWidget10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Container(
        width: 75.00001525878906,
        height: 75.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  color: Color.fromARGB(255, 255, 128, 128),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "assets/images/82d1526a61be3239e9b6e1f39cd158adcde5a205.png",
                  color: null,
                  fit: BoxFit.cover,
                  width: 75.00001525878906,
                  height: 75.0,
                  colorBlendMode: BlendMode.dstATop,
                ),
              ),
              Positioned(
                left: 25.999887466430664,
                top: 25.38461685180664,
                right: null,
                bottom: null,
                width: 23.076921463012695,
                height: 23.076923370361328,
                child: GeneratedEllipse16Widget9(),
              )
            ]),
      ),
    );
  }
}
