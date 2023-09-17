import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Welcome To My Photo Gallery!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Search for photos..."),
            ),
          ),

          GridView(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            children: [
              ListTile(leading: Icon(Icons.ad_units_sharp),),
              ListTile(leading: Icon(Icons.ad_units_sharp),),
              ListTile(leading: Icon(Icons.ad_units_sharp),),
              ListTile(leading: Icon(Icons.ad_units_sharp),),
            ],
          ),


        ],
      ),
    );
  }
}