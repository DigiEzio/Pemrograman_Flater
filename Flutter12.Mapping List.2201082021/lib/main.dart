import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, Object>> myList = [
    {
      "Name": "Alif",
      "Age": 23,
      "facColor": ["Black", "Red", "Amber", "White", "Red", "Green"]
    },
    {
      "Name": "Ezio",
      "Age": 23,
      "facColor": ["White", "Red", "Green"]
    },
    {
      "Name": "ZIo",
      "Age": 23,
      "facColor": ["Black", "Red", "Amber", "White", "Red", "Green"]
    },
    {
      "Name": "Alif",
      "Age": 23,
      "facColor": ["Black", "Red", "Amber", "White", "Red", "Green"]
    },
    {
      "Name": "Ezio",
      "Age": 23,
      "facColor": ["White", "Red", "Green"]
    },
    {
      "Name": "ZIo",
      "Age": 23,
      "facColor": ["Black", "Red", "Amber", "White", "Red", "Green"]
    },
    {
      "Name": "Alif",
      "Age": 23,
      "facColor": ["Black", "Red", "Amber", "White", "Red", "Green"]
    },
    {
      "Name": "Ezio",
      "Age": 23,
      "facColor": ["White", "Red", "Green"]
    },
    {
      "Name": "ZIo",
      "Age": 23,
      "facColor": ["Black", "Red", "Amber", "White", "Red", "Green"]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map(
            (data) {
              print(data['facColor']);
              List myFavColor = data['facColor'] as List;
              return Card(
                margin: EdgeInsets.all(20),
                color: Colors.black.withOpacity(0.1),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Nama: ${data['Name']}"),
                                Text("Age: ${data['Age']}"),
                              ],
                            )
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: myFavColor.map(
                              (color) {
                                return Container(
                                  color: Colors.amber,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 8),
                                  padding: EdgeInsets.all(10),
                                  width: 100,
                                  child: Text(color),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ]),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
