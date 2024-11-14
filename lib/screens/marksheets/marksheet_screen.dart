import 'package:flutter/material.dart';

class MarksheetScreen extends StatelessWidget {
    const MarksheetScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic> firstYear = {
      "title": "Year 1",
      "subjects": [
        {
          "subject": "Math", 
          "marks": "88", 
          "grade": "B",
        },
        {
          "subject": "Science", 
          "marks": "92", 
          "grade": "A",
        },
        {
          "subject": "English", 
          "marks": "85",
          "grade": "B",
        },
        {
          "subject": "Computer", 
          "marks": "89", 
          "grade": "B",
        },
        {
          "subject": "Social", 
          "marks": "90", 
          "grade": "A",
        },
      ],
      "total": "444",
      "average": "88.8",
    };

    final Map<String, dynamic> secondYear = {
      "title": "Year 2",
      "subjects": [
        {
          "subject": "Math", 
          "marks": "91", 
          "grade": "A",
        },
        {
          "subject": "Science", 
          "marks": "87", 
          "grade": "B",
        },
        {
          "subject": "English", 
          "marks": "90", 
          "grade": "A",
        },
        {
          "subject": "Computer", 
          "marks": "82", 
          "grade": "B",
        },
        {
          "subject": "Social", 
          "marks": "88", 
          "grade": "B",
        },
      ],
      "total": "438",
      "average": "87.6",
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Marksheet'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: 
        
        
        Column(

          children: [

            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                SizedBox(height: 10),
                Text(
                  'St. Mary Secondary School',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Pokhara-7, Nayagaun',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Estd: 1985 AD',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Marksheet',
                  
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
                  
                ),
                SizedBox(height: 5),
                Text(
                  'Student name : Asmi Adhikari',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Roll No.: 1',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Annual Examination',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
              ],
            ),

            Text(
              firstYear["title"],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            

            const SizedBox(height: 8),

            Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
              },

              children: [
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Subject', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Marks', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Grade', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),

                ...firstYear["subjects"].map<TableRow>((subject) {
                  return TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(subject['subject']),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(subject['marks']),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(subject['grade']),
                      ),
                    ],
                  );
                }).toList(),

                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Total / Average', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(firstYear["total"], style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(firstYear["average"], style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24),

            Text(
              secondYear["title"],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
              },
              children: [

                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Subject', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Marks', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Grade', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),

                ...secondYear["subjects"].map<TableRow>((subject) {
                  return TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(subject['subject']),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(subject['marks']),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(subject['grade']),
                      ),
                    ],
                  );
                }).toList(),

                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Total / Average', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(secondYear["total"], style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(secondYear["average"], style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
