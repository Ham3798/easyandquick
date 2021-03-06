import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedbookmarkwidget/generated/GeneratedVector1Widget.dart';

/* Instance Base / Checkbox
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedBaseCheckboxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Container(
        width: 20.0,
        height: 20.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          border: Border.all(
            width: 1.0,
            color: Color.fromARGB(255, 255, 128, 128),
          ),
        ),
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(2.0),
                child: Container(
                  color: Color.fromARGB(255, 255, 128, 128),
                ),
              ),
              Positioned(
                left: 6.0,
                top: 8.0,
                right: null,
                bottom: null,
                width: 8.0,
                height: 4.5,
                child: GeneratedVector1Widget(),
              )
            ]),
      ),
    );
  }
}
