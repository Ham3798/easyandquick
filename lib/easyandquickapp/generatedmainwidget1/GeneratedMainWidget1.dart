import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/Generated1350Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/Generated13Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedMain_problem2Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedBaseProfileWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedDDayWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedWidget2.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedBottomSectionWidget12.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedWidget1.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedRectangle142Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedPlusWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedMain_problem1Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/Generated50Widget36.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedVectorWidget14.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardPreBuildWidget2.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedMain_problem3Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardPreBuildWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedGroup11Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardPreBuildWidget6.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardPreBuildWidget5.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardPreBuildWidget4.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedGroup7Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedUserWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/Generated102Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedMain_logo_EQWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedPlusWidget1.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedWidget3.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedRectangle124Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedRectangle143Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedRectangle141Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedLevelWidget12.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/Generated462Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardPreBuildWidget3.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedGroupWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardPreBuildWidget1.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedBaseWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedMain_toproblems_buttonWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedRectangle139Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardPreBuildWidget7.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/Generated432Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/generated/GeneratedCardPreBuildWidget8.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../../provider/myProvider.dart';

/* Frame main
    Autogenerated by FlutLab FTF Generator
  */

class GeneratedMainWidget1 extends StatelessWidget {
  const GeneratedMainWidget1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _GeneratedMainWidget1State();
}

class _GeneratedMainWidget1State extends State<MyHomePage> {
  var _idList;
  var _strList;

  @override
  void initState() {
    // ?????? ??????.
    // TODO: implement initState
    super.initState();
    _asyncMethod();
  }

  _asyncMethod() async {
    final response_ID =
        await http.get(Uri.parse('http://127.0.0.1:5000/problems/id'));
    final decoded_ID = json.decode(response_ID.body) as List<dynamic>;

    final response_str =
        await http.get(Uri.parse('http://127.0.0.1:5000/problems/str'));
    final decoded_str = json.decode(response_str.body) as List<dynamic>;
    setState(() {
      _idList = decoded_ID;
      _strList = decoded_str;

      final problem_inform provider = Provider.of<problem_inform>(context);
      provider.change_strList(_strList);
      provider.change_recommendList(_idList);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_idList == null)
      return Center(
        child: Container(
          width: 200,
          height: 200,
          child: CircularProgressIndicator(),
        ),
      );
    else
      return Material(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                height: 1624.0,
                child: Stack(children: [
                  Container(
                      width: constraints.maxWidth,
                      child: Container(
                        width: 375.0,
                        height: 1624.0,
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
                                  color: Color.fromARGB(255, 99, 95, 255),
                                ),
                              ),
                              Positioned(
                                left: 375.0,
                                top: 356.0,
                                right: null,
                                bottom: null,
                                width: 374.9998779296875,
                                height: 1234.0,
                                child: GeneratedRectangle124Widget(),
                              ),
                              Positioned(
                                left: 23.0,
                                top: 1171.0,
                                right: null,
                                bottom: null,
                                width: 132.0,
                                height: 20.0,
                                child: GeneratedWidget(),
                              ),
                              Positioned(
                                left: 331.0,
                                top: 44.0,
                                right: null,
                                bottom: null,
                                width: 128.0,
                                height: 37.0,
                                child: GeneratedBaseProfileWidget(),
                              ),
                              Positioned(
                                left: 25.0,
                                top: 131.0,
                                right: null,
                                bottom: null,
                                width: 325.0,
                                height: 170.0,
                                child: GeneratedCardPreBuildWidget(),
                              ),
                              Positioned(
                                left: 28.0,
                                top: 771.0,
                                right: null,
                                bottom: null,
                                width: 325.0,
                                height: 105.0,
                                child: GeneratedCardPreBuildWidget1(),
                              ),
                              Positioned(
                                left: 25.0,
                                top: 895.0,
                                right: null,
                                bottom: null,
                                width: 325.0,
                                height: 105.0,

                                child: GeneratedCardPreBuildWidget2(),
                              ),
                              Positioned(
                                left: 28.0,
                                top: 1019.0,
                                right: null,
                                bottom: null,
                                width: 325.0,
                                height: 105.0,
                                child: GeneratedCardPreBuildWidget3(),
                              ),
                              Positioned(
                                left: 28.0,
                                top: 408.0,
                                right: null,
                                bottom: null,
                                width: 325.0,
                                height: 203.0,
                                child: GeneratedCardPreBuildWidget4(),
                              ),
                              Positioned(
                                left: 28.0,
                                top: 555.0,
                                right: null,
                                bottom: null,
                                width: 325.0,
                                height: 105.0,
                                child: GeneratedCardPreBuildWidget5(),
                              ),
                              Positioned(
                                left: 28.0,
                                top: 1213.0,
                                right: null,
                                bottom: null,
                                width: 325.0,
                                height: 105.0,
                                child: GeneratedCardPreBuildWidget6(),
                              ),
                              Positioned(
                                left: 34.0,
                                top: 1287.0,
                                right: null,
                                bottom: null,
                                width: 72.0,
                                height: 18.0,
                                child: Generated432Widget(),
                              ),
                              Positioned(
                                left: 28.0,
                                top: 1327.0,
                                right: null,
                                bottom: null,
                                width: 325.0,
                                height: 105.0,
                                child: GeneratedCardPreBuildWidget7(),
                              ),
                              Positioned(
                                left: 42.0,
                                top: 1409.0,
                                right: null,
                                bottom: null,
                                width: 69.0,
                                height: 18.0,
                                child: Generated102Widget(),
                              ),
                              Positioned(
                                left: 28.0,
                                top: 1441.0,
                                right: null,
                                bottom: null,
                                width: 325.0,
                                height: 105.0,
                                child: GeneratedCardPreBuildWidget8(),
                              ),
                              Positioned(
                                left: 41.0,
                                top: 1519.0,
                                right: null,
                                bottom: null,
                                width: 72.0,
                                height: 18.0,
                                child: Generated462Widget(),
                              ),
                              Positioned(
                                left: 0.0,
                                top: 0.0,
                                right: null,
                                bottom: null,
                                width: 375.0,
                                height: 44.0,
                                child: GeneratedBaseWidget(),
                              ),
                              Positioned(
                                left: 17.0,
                                top: 131.0,
                                right: null,
                                bottom: null,
                                width: 339.0,
                                height: 170.0,
                                child: GeneratedRectangle139Widget(),
                              ),
                              Positioned(
                                left: 38.0,
                                top: 256.0,
                                right: null,
                                bottom: null,
                                width: 305.19500732421875,
                                height: 16.110000610351562,
                                child: GeneratedRectangle141Widget(),
                              ),
                              Positioned(
                                left: 39.0,
                                top: 256.0,
                                right: null,
                                bottom: null,
                                width: 80.55000305175781,
                                height: 16.110000610351562,
                                child: GeneratedRectangle142Widget(),
                              ),
                              Positioned(
                                left: 255.0,
                                top: 142.0,
                                right: null,
                                bottom: null,
                                width: 80.55000305175781,
                                height: 16.110000610351562,
                                child: GeneratedRectangle143Widget(),
                              ),
                              Positioned(
                                left: 35.0,
                                top: 80.0,
                                right: null,
                                bottom: null,
                                width: 41.0,
                                height: 42.54716873168945,
                                child: GeneratedGroup7Widget(),
                              ),
                              Positioned(
                                left: 88.0,
                                top: 91.0,
                                right: null,
                                bottom: null,
                                width: 47.0,
                                height: 15.0,
                                child: GeneratedUserWidget(),
                              ),
                              Positioned(
                                left: 29.0,
                                top: 153.0,
                                right: null,
                                bottom: null,
                                width: 51.0,
                                height: 19.0,
                                child: GeneratedDDayWidget(),
                              ),
                              Positioned(
                                left: 29.0,
                                top: 726.0,
                                right: null,
                                bottom: null,
                                width: 84.0,
                                height: 20.0,
                                child: GeneratedWidget1(),
                              ),
                              Positioned(
                                left: 302.0,
                                top: 102.0,
                                right: null,
                                bottom: null,
                                width: 57.0,
                                height: 23.0,
                                child: GeneratedWidget2(),
                              ),
                              Positioned(
                                left: 35.0,
                                top: 369.0,
                                right: null,
                                bottom: null,
                                width: 27.5,
                                height: 20.54166603088379,
                                child: GeneratedGroupWidget(),
                              ),
                              Positioned(
                                left: 74.0,
                                top: 377.0,
                                right: null,
                                bottom: null,
                                width: 229.0,
                                height: 16.0,
                                child: GeneratedWidget3(),
                              ),
                              Positioned(
                                left: 27.0,
                                top: 227.0,
                                right: null,
                                bottom: null,
                                width: 20.0,
                                height: 20.0,
                                child: GeneratedVectorWidget14(),
                              ),
                              Positioned(
                                left: 0.0,
                                top: 1554.0,
                                right: null,
                                bottom: null,
                                width: 375.0,
                                height: 70.0,
                                child: GeneratedGroup11Widget(),
                              ),
                              Positioned(
                                left: 313.0,
                                top: 369.0,
                                right: null,
                                bottom: null,
                                width: 30.0,
                                height: 30.0,
                                child: GeneratedMain_toproblems_buttonWidget(),
                              ),
                              Positioned(
                                left: 305.0,
                                top: 1165.0,
                                right: null,
                                bottom: null,
                                width: 30.0,
                                height: 30.0,
                                child: GeneratedPlusWidget(),
                              ),
                              Positioned(
                                left: 313.0,
                                top: 687.0,
                                right: null,
                                bottom: null,
                                width: 30.0,
                                height: 96.0,
                                child: GeneratedPlusWidget1(),
                              ),
                              Positioned(
                                left: 83.0,
                                top: 153.0,
                                right: null,
                                bottom: null,
                                width: 132.0,
                                height: 23.0,
                                child: Generated13Widget(),
                              ),
                              Positioned(
                                left: 28.0,
                                top: 190.0,
                                right: null,
                                bottom: null,
                                width: 148.0,
                                height: 19.0,
                                child: Generated50Widget36(),
                              ),
                              Positioned(
                                left: 54.0,
                                top: 229.0,
                                right: null,
                                bottom: null,
                                width: 116.0,
                                height: 19.0,
                                child: Generated1350Widget(),
                              ),
                              Positioned(
                                left: 28.0,
                                top: 419.0,
                                right: null,
                                bottom: null,
                                width: 322.0,
                                height: 73.0,
                                child: GeneratedMain_problem1Widget(),
                              ),
                              Positioned(
                                left: 35.0,
                                top: 492.0,
                                right: null,
                                bottom: null,
                                width: 230.0,
                                height: 85.0,
                                child: GeneratedMain_problem2Widget(),
                              ),
                              Positioned(
                                left: 35.0,
                                top: 569.0,
                                right: null,
                                bottom: null,
                                width: 230.0,
                                height: 85.0,
                                child: GeneratedMain_problem3Widget(),
                              ),
                              Positioned(
                                left: 121.0,
                                top: 105.0,
                                right: null,
                                bottom: null,
                                width: 47.0,
                                height: 20.0,
                                child: GeneratedBottomSectionWidget12(),
                              ),
                              Positioned(
                                left: 85.0,
                                top: 109.0,
                                right: null,
                                bottom: null,
                                width: 33.0,
                                height: 15.0,
                                child: GeneratedLevelWidget12(),
                              ),
                              Positioned(
                                left: 25.0,
                                top: 44.0,
                                right: null,
                                bottom: null,
                                width: 39.0,
                                height: 15.0,
                                child: GeneratedMain_logo_EQWidget(),
                              )
                            ]),
                      ))
                ])),
          );
        }),
      ));
  }
}
