import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/myProvider.dart';
/* Text Course Title
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCourseTitleWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${Provider.of<problem_inform>(context).strList[0]}',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.171875,
        fontSize: 12.0,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 22, 23, 25),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}