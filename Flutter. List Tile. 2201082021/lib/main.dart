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
        title: Text("List Tile"),
        ),
        body: ListView(
          children:[
            ListTile(

              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              title: Text("Alif Nur Samudra"),
              subtitle: Text(
                "Ini subtitle ya bang .... halo bang jsnanskndownaksnsdiouenakmsnciuanksnsdiunaksmnsdiuwnaijndiuenaijsncdiewn",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),

              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
              // tileColor: Colors.amber,
              // dense: true,
              onTap: (){
                return;
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Alif Nur Samudra"),
              subtitle: Text("Ini subtitle ya bang ...."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM")
            ),
             Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Alif Nur Samudra"),
              subtitle: Text("Ini subtitle ya bang ...."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM")
            ),
             Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Alif Nur Samudra"),
              subtitle: Text("Ini subtitle ya bang ...."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM")
            ), Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Alif Nur Samudra"),
              subtitle: Text("Ini subtitle ya bang ...."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM")
            ), Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Alif Nur Samudra"),
              subtitle: Text("Ini subtitle ya bang ...."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM")
            ),
          ],
       ),
      ),
    );
  }
}
