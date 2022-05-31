import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedCardCardContentWidget22.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedCardProgressBarWidget22.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedFrame31Widget22.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/generated/GeneratedFrame30Widget22.dart';

/* Instance problems_box3
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedProblems_box3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedProblemWidget'),
      child: Container(
        width: 325.0,
        height: 105.0,
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
                height: 75.0,
                child: GeneratedCardCardContentWidget22(),
              ),
              Positioned(
                left: 15.0,
                top: 90.0,
                right: null,
                bottom: null,
                width: 295.0,
                height: 35.0,
                child: GeneratedFrame30Widget22(),
              ),
              Positioned(
                left: 15.0,
                top: 140.0,
                right: null,
                bottom: null,
                width: 284.0,
                height: 15.0,
                child: GeneratedCardProgressBarWidget22(),
              ),
              Positioned(
                left: 15.0,
                top: 170.0,
                right: null,
                bottom: null,
                width: 295.0,
                height: 18.0,
                child: GeneratedFrame31Widget22(),
              )
            ]),
      ),
    );
  }
}