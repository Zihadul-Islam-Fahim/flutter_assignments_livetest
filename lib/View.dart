import 'package:flutter/material.dart';

import 'main.dart';

Widget protrait(context) {
  return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          child: SizedBox(
              height: 150,
              child: Image.network(
                imageList[index],
              )),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 8,
        );
      },
      itemCount: imageList.length);
}

Widget landScape(context) {
  return Card(
    child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            child: Image.network(
              imageList[index],
              alignment: Alignment.topCenter,
            ),
          );
        }),
  );
}
