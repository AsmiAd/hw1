import 'package:get/get.dart';

class MiscellaneousController extends GetxController {
  String selectedGender = "Rather not say";
  List<String> selectedHobbies = [];

  //for radio
  List<String> genders = [
    "Male",
    "Female",
    "Others",
    "Rather not say",
  ];

  void selectGender(String val) {
    selectedGender = val;
    update();
  }

  //for checkbox

  List<String> hobbies = [
    "Singing",
    "Reading",
    "Playing football",
    "Dancing",
    "None",
  ];

  void selectHobbies(String val) {
    if (selectedHobbies.contains(val)) {
      selectedHobbies.remove(val);
    } else {
      selectedHobbies.add(val);
    }
    update();
  }

  //for switch

  bool isAbove18 = false;

  void selectAge(bool val) {
    isAbove18 = val;
    update();
  }

  //for favourite

  bool isFavoriteSelected = false;
  bool isStarSelected = true;

  void toggleFavourite() {
    isFavoriteSelected = !isFavoriteSelected;
    update();
  }

  void toggleStar() {
    isStarSelected = !isStarSelected;
    update();
  }

}
