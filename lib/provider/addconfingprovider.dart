import 'package:flutter/widgets.dart';

class Appconfingprovider extends ChangeNotifier {
  String applanguage = 'en';

  void chengeLanguage(String newlanguage) {
    if (applanguage == newlanguage) {
      return;
    }
    applanguage = newlanguage;
    notifyListeners();
  }
}
