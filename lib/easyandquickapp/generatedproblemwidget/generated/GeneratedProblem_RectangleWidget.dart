import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/svg/svg.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Vector problem_Rectangle
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedProblem_RectangleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: 0.00,
        c: -0.00,
        d: 1.00,
        child: Container(
          width: 375.99993896484375,
          height: 605.0000610351562,
          child: SvgWidget(painters: [
            SvgPathPainter.fill()
              ..addPath(
                  'M0 30C0 13.4315 13.4315 0 30 0L346 0C362.568 0 376 13.4315 376 30L376 605L0 605L0 30Z')
              ..color = Color.fromARGB(255, 252, 252, 255),
          ]),
        ));
  }
}
