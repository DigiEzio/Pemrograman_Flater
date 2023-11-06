import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
          ),
          body: Center(
            child: Container(
              width: 350,
              height: 500,
              color: Colors.amber,
              child: Image.network(
                "https://picsum.photos/200/300"
                ),
              // child: Image(
              //   fit: BoxFit.cover,
              //   image: AssetImage("images/01-1024x1024.jpg")),
                // image: NetworkImage("https://picsum.photos/200/300")),
            
          ),
        ),
      )
    );
  }
}