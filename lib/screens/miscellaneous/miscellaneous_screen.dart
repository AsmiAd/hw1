import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hw1/controller/miscellaneous_controller.dart';

class MiscellaneousScreen extends StatelessWidget {
  const MiscellaneousScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GetBuilder<MiscellaneousController>(builder: (misc) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //radio

                  const Text(
                    "Gender",
                    style: TextStyle(fontSize: 20),
                  ),

                  const SizedBox(height: 5),

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: misc.genders.length,
                    itemBuilder: (BuildContext context, int index) {
                      return RadioListTile(
                        value: misc.genders[index],
                        groupValue: misc.selectedGender,
                        onChanged: (val) => misc.selectGender(val.toString()),
                        title: Text(misc.genders[index]),
                      );
                    },
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //checkbox

                  const Text(
                    "Hobbies",
                    style: TextStyle(fontSize: 20),
                  ),

                  const SizedBox(height: 5),

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: misc.hobbies.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: misc.selectedHobbies.contains(
                          misc.hobbies[index],
                        ),
                        onChanged: (val) =>
                            misc.selectHobbies(misc.hobbies[index]),
                        title: Text(misc.hobbies[index]),
                      );
                    },
                  ),

                  //switch

                  const SizedBox(
                    height: 20,
                  ),

                  const Text(
                    "Are you above 18?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: misc.isAbove18,
                    onChanged: (val) => misc.selectAge(val),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //favourite

                  const Text(
                    "Mark as Favourite",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  GestureDetector(
                    onTap: misc.toggleFavourite,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        misc.isFavoriteSelected
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 50.0,
                        color:
                            misc.isFavoriteSelected ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: misc.toggleStar,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        misc.isStarSelected ? Icons.star : Icons.star_border,
                        size: 50.0,
                        color:
                            misc.isStarSelected ? Colors.yellow : Colors.grey,
                      ),
                    ),
                  ),

                  //linear gradient button
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        debugPrint('Next button clicked');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color.fromARGB(255, 137, 191, 236), Color.fromARGB(255, 135, 228, 138)],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ));
  }
}
