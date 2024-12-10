import 'package:flutter/material.dart';

class TabbarScreen extends StatelessWidget {
  const TabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 154, 187, 244),
          title: const Text("Tabbar"),
          bottom: const TabBar(
            isScrollable: false,
            indicatorColor: Color.fromARGB(255, 255, 255, 255),
            indicatorWeight: 4.0,
            labelColor: Color.fromARGB(255, 249, 247, 244),
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: "My info",
              ),
              Tab(
                icon: Icon(Icons.school),
                text: "Education",
              ),
              Tab(
                icon: Icon(Icons.work),
                text: "Experience",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            InfoScreen(),
            Center(child: Text("Education Screen")),
            Center(child: Text("Experience Screen")),
          ],
        ),
      ),
    );
  }
}

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "My Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Text("Name: Asmi Adhikari"),
          Text("Email: asmiadhikari@gmail.com"),
          Text("Phone: 4564565746744"),
          SizedBox(height: 20),
          Text("I am a software developer ."),
        ],
      ),
    );
  }
}
