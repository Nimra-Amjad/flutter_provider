import 'package:flutter/widgets.dart';

class HomePageProvider with ChangeNotifier {
  bool? iseligible;
  String? eligibilityMessage = "";

  void checkEligibility(int age) {
    if (age >= 18) {
      iseligible = true;
      eligibilityMessage = "You are eligible";
      notifyListeners();
    } else {
      iseligible = false;
      eligibilityMessage = "You are not eligible";
      notifyListeners();
    }
  }
}
