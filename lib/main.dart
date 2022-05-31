import 'package:flutter/material.dart';
import 'package:flutterapp/easyandquickapp/generatedmainwidget1/GeneratedMainWidget1.dart';
import 'package:flutterapp/easyandquickapp/generatedsearchwidget/GeneratedSearchWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedccountwidget/GeneratedCcountWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedqna_onewidget/GeneratedQna_oneWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedqna_twowidget/GeneratedQna_twoWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedqna_threewidget/GeneratedQna_threeWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedqnawidget/GeneratedQnaWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedsearch_completewidget/GeneratedSearch_completeWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedgroup8widget/GeneratedGroup8Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedbookmarkwidget/GeneratedBookmarkWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedgroup27widget/GeneratedGroup27Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemwidget/GeneratedProblemWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedproblemswidget/GeneratedProblemsWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedsamplewidget/GeneratedSampleWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedsample2widget/GeneratedSample2Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedtestwidget/GeneratedTestWidget.dart';
import 'package:flutterapp/easyandquickapp/generatedmacbookpro141widget/GeneratedMacBookPro141Widget.dart';
import 'package:flutterapp/easyandquickapp/generatedmacbookpro142widget/GeneratedMacBookPro142Widget.dart';
import 'package:provider/provider.dart';
import 'provider/myProvider.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => problem_inform()),
      ],
      child: easyandquickApp(),
    ),
  );
  //runApp(easyandquickApp());
}

class easyandquickApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedMainWidget1',
      routes: {
        '/GeneratedMainWidget1': (context) => GeneratedMainWidget1(),
        '/GeneratedSearchWidget': (context) => GeneratedSearchWidget(),
        '/GeneratedCcountWidget': (context) => GeneratedCcountWidget(),
        '/GeneratedQna_oneWidget': (context) => GeneratedQna_oneWidget(),
        '/GeneratedQna_twoWidget': (context) => GeneratedQna_twoWidget(),
        '/GeneratedQna_threeWidget': (context) => GeneratedQna_threeWidget(),
        '/GeneratedQnaWidget': (context) => GeneratedQnaWidget(),
        '/GeneratedSearch_completeWidget': (context) =>
            GeneratedSearch_completeWidget(),
        '/GeneratedGroup8Widget': (context) => GeneratedGroup8Widget(),
        '/GeneratedBookmarkWidget': (context) => GeneratedBookmarkWidget(),
        '/GeneratedGroup27Widget': (context) => GeneratedGroup27Widget(),
        '/GeneratedProblemWidget': (context) => GeneratedProblemWidget(),
        '/GeneratedProblemsWidget': (context) => GeneratedProblemsWidget(),
        '/GeneratedSampleWidget': (context) => GeneratedSampleWidget(),
        '/GeneratedSample2Widget': (context) => GeneratedSample2Widget(),
        '/GeneratedTestWidget': (context) => GeneratedTestWidget(),
        '/GeneratedMacBookPro141Widget': (context) =>
            GeneratedMacBookPro141Widget(),
        '/GeneratedMacBookPro142Widget': (context) =>
            GeneratedMacBookPro142Widget(),
      },
    );
  }
}
