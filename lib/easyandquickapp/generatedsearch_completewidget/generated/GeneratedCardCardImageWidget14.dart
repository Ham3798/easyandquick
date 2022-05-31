import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedsearch_completewidget/generated/GeneratedEllipse16Widget13.dart';

/* Instance Card / Card Image
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCardCardImageWidget14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                "assets/images/7d3fe305aae8cacb0e0947a2eef327e63bef5650.png",
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
              child: GeneratedEllipse16Widget13(),
            )
          ]),
    );
  }
}