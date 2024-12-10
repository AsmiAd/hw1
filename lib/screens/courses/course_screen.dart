import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: SingleChildScrollView(
            child: Column(
              children: [
                //first section
                Container(
                  clipBehavior: Clip.none,
                  padding: const EdgeInsets.only(top: 30, bottom: 15, left: 14),
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(0, 3),
                            spreadRadius: 5,
                            blurRadius: 5)
                      ]),
                  child: const Text(
                    "Courses",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  ),
                ),

                //second section
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 20, top: 5),
                  child: Container(
                    clipBehavior: Clip.none,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  //progress details
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    minLeadingWidth: 0,
                                    dense: true,
                                    leading: Container(
                                      height: 80,
                                      width: 3,
                                      color: Colors.blue.shade200,
                                    ),
                                    title: const Text(
                                      "Overall",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        const Icon(
                                          Icons.stadium_outlined,
                                          color: Colors.blue,
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            text: " 2195th",
                                            children: [
                                              TextSpan(
                                                text: " in total",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    minLeadingWidth: 0,
                                    dense: true,
                                    leading: Container(
                                      height: 80,
                                      width: 3,
                                      color: Colors.red.shade200,
                                    ),
                                    title: const Text(
                                      "Last week",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        const Icon(
                                          Icons.energy_savings_leaf,
                                          color: Colors.red,
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            text: " 50th",
                                            children: [
                                              TextSpan(
                                                text: "  of the week",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            // progress
                            Stack(
                              children: [
                                SizedBox(
                                  height: 120,
                                  width: 120,
                                  child: CircularProgressIndicator(
                                    value: 0.35,
                                    backgroundColor: Colors.grey.shade200,
                                    strokeWidth: 10,
                                    color: Colors.green,
                                    strokeCap: StrokeCap.round,
                                  ),
                                ),
                                const Positioned.fill(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "650",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                      Text(
                                        "to level 6",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        //seperator
                        const Divider(),

                        //person list
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              PersonAvatar(),
                              PersonAvatar(),
                              PersonAvatar(
                                isHighLighted: true,
                              ),
                              PersonAvatar(),
                              PersonAvatar(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //third section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Courses"),
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Text("View All"),
                            label: const Icon(
                              Icons.arrow_forward,
                              size: 20,
                            ),
                          ),
                        ],
                      ),

                      //tabbar
                      const TabBar(
                        tabs: [
                          Tab(
                            child: Text("My Courses"),
                          ),
                          Tab(
                            child: Text("All Courses"),
                          ),
                        ],
                      ),

                      //Tabview
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 135,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          stops: [0.1, 0.9],
                          colors: [
                            Colors.orange,
                            Colors.orangeAccent,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Transform.translate(
                            offset: const Offset(-12.5, -25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.purple,
                              radius: 34,
                              child: Text(
                                "Ae",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(0, -19),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "After Effects",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  "Design,\nLearn,\nMonetize",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "523 \$",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton.filledTonal(
                                        style: IconButton.styleFrom(
                                          elevation: 10,
                                          shadowColor: Colors.orange,
                                          backgroundColor: Colors.white,
                                        ),
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.add_shopping_cart_sharp),
                                        color: Colors.orange),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//for second section
class PersonAvatar extends StatelessWidget {
  const PersonAvatar({
    this.isHighLighted = false,
    super.key,
  });

  final bool? isHighLighted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: isHighLighted == true ? 40 : 30,
            backgroundImage: const CachedNetworkImageProvider(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUfiySJr8Org5W-oE2v3_i7VqufglYtSdqw&s"),
          ),
          Text(
            isHighLighted == true ? "You" : "${Random().nextInt(100) + 100}",
            style: TextStyle(
                fontWeight: isHighLighted == true
                    ? FontWeight.bold
                    : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
