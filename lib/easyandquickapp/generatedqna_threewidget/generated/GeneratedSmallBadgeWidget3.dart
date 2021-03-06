import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedqna_threewidget/generated/GeneratedWidget19.dart';

/* Frame Small Badge
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedSmallBadgeWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedWidget19'),
      child: Container(
        width: 35.0,
        height: 14.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  color: Color.fromARGB(255, 255, 128, 128),
                ),
              ),
              Positioned(
                left: 8.0,
                top: 0.5,
                right: null,
                bottom: null,
                width: 24.0,
                height: 18.0,
                child: GeneratedWidget19(),
              )
            ]),
      ),
    );
  }
}
