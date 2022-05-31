import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemwidget/generated/GeneratedPassWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemwidget/generated/GeneratedConfirmWidget.dart';

import 'GeneratedCheckoutNowWidget.dart';
import 'GeneratedCheckoutNowWidget1.dart';

/* Instance problem_button_group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedProblem_button_groupWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.0,
      height: 48.0,
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
              width: 152.5,
              height: 48.0,
              child: GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, '/GeneratedProblem_RectangleWidget'),
                child: Container(
                  width: 152.5,
                  height: 48.0,
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
                            color: Color.fromARGB(255, 99, 95, 255),
                          ),
                        ),
                        Positioned(
                          left: 63.25,
                          top: 15.0,
                          right: null,
                          bottom: null,
                          width: 31.0,
                          height: 23.0,
                          child: GeneratedCheckoutNowWidget(),
                        )
                      ]),
                ),
              ),
            ),
            Positioned(
              left: 172.5,
              top: 0.0,
              right: null,
              bottom: null,
              width: 152.5,
              height: 48.0,
              child: GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, '/GeneratedProblem_RectangleWidget'),
                child: Container(
                  width: 152.5,
                  height: 48.0,
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
                            color: Color.fromARGB(255, 125, 197, 121),
                          ),
                        ),
                        Positioned(
                          left: 63.25,
                          top: 15.0,
                          right: null,
                          bottom: null,
                          width: 31.0,
                          height: 23.0,
                          child: GeneratedCheckoutNowWidget1(),
                        )
                      ]),
                ),
              ),
            )
          ]),
    );
  }
}