import 'package:flutter/material.dart';

class ShowDetails extends StatelessWidget {
  final photoIndex;
   ShowDetails({super.key,  required this.photoIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Photo Details"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(child: Image.network(photoIndex.url.toString()),),
            SizedBox(height: 10,),
            Text('Title : '+photoIndex.title,style: TextStyle(fontSize: 16),),
            Text('ID : '+photoIndex.id.toString(),style: TextStyle(fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
