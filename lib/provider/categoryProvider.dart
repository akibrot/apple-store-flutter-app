import 'package:flutter/widgets.dart';

class categoryProvider with ChangeNotifier {
  String _category = "Mac";

  String get category => _category;

  void changeCategory(category) {
    _category = category;
    print(_category);
    notifyListeners();
  }
}
