import 'package:flutter/cupertino.dart';



class problem_inform with ChangeNotifier {
  dynamic _recommendList;
  dynamic _strList;

  get strList => _strList;
  get recommendList => _recommendList;

  void change_recommendList(dynamic recommendList) {
    _recommendList = recommendList;
    notifyListeners();
  }

  void change_strList(dynamic strList) {
    _strList = strList;
    notifyListeners();
  }
}

