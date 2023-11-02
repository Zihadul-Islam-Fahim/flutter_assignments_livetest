import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_assignments_livetest/ShowDetails.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List<Photos> photoList = [];

  Future<List<Photos>> getPhotosApi() async {
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(id: i["id"], title: i["title"], url: i["url"]);
        photoList.add(photos);
        print(photos.id);
      }
      return photoList;
    } else {
      return photoList;
    }
  }

  void initState() {
    getPhotosApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery Album"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPhotosApi(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Photos>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.separated(
                      itemCount: photoList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.network(
                                '${snapshot.data![index].url}',
                                fit: BoxFit.cover,
                              )),
                          title: Text(snapshot.data![index].title.toString()),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShowDetails(
                                        photoIndex: photoList[index])));
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 8,
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Photos {
  final int id;
  final String title;
  final String url;

  Photos({
    required this.id,
    required this.title,
    required this.url,
  });
}
