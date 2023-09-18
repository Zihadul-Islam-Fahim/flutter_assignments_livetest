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
  HomeActivity({super.key});

  var myimages = [
    'https://static5.depositphotos.com/1006597/536/i/450/depositphotos_5362508-stock-photo-lychee.jpg',
    'https://thumbs.dreamstime.com/b/red-apple-leaf-slice-white-background-29914331.jpg',
    'https://cdn.xxl.thumbs.canstockphoto.com/orange-fruit-with-leafs-stock-photos_csp10122433.jpg',
    'data:image/jpeg;base64,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',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd45wGlX8XCWz15deXWozt226lUrjO-vTBvw&usqp=CAU',
    'data:image/jpeg;base64,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',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmR53uZX21OPbkVyH0cjXCsKLoy9o145IlXg&usqp=CAU',
    'https://media.istockphoto.com/id/876503894/photo/strawberry-with-sliced-half-isolated-on-white-background.jpg?s=170667a&w=0&k=20&c=S77l7MU6n9RHER46JKoLfdCdgXr7YCz0ZtWLvptXElQ=',
    'data:image/jpeg;base64,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'
  ];

  MySnacbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            SizedBox(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    childAspectRatio: 1),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        MySnacbar('This is Lichi', context);
                      }
                      if (index == 1) {
                        MySnacbar('This is Apple', context);
                      }
                      if (index == 2) {
                        MySnacbar('This is Orange', context);
                      }
                      if (index == 3) {
                        MySnacbar('This is JackFruit', context);
                      }
                      if (index == 4) {
                        MySnacbar('This is PineApple', context);
                      }
                      if (index == 5) {
                        MySnacbar('This is Guava', context);
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridTile(
                          footer: Container(
                            //  color: Colors.orange,
                            child: Text(
                              'Photo ${index + 1}',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          child: Image.network(myimages[index])),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myimages[6]),
                    ),
                    title: Text('Photo 1'),
                    subtitle: Text("This is Banana"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myimages[7]),
                    ),
                    title: Text('Photo 2'),
                    subtitle: Text("This is Strawberry"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myimages[8]),
                    ),
                    title: Text('Photo 3'),
                    subtitle: Text("This is Dragon Fruit"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  MySnacbar('Photos Upload Successfully!', context);
                },
                child: Icon(Icons.upload),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
