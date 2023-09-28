import 'package:flutter/material.dart';

import 'image_card.dart';
import 'main.dart';

Widget protrait() {
  return Column(children: [
    Expanded(
      flex: 65,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          height: 500,
          width: 500,
          child: Image.network(
              fit: BoxFit.cover,
              'https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJhbHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'),
        ),
      ),
    ),
    const SizedBox(
      height: 5,
    ),
    const Text(
      'Zihadul Islam Fahim',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    const SizedBox(
      height: 7,
    ),
    const Expanded(
      flex: 12,
      child: Padding(
        padding: EdgeInsets.only(left: 8),
        child: Text(
            'Im Learing Flutter Because Flutter has rapidly gained traction in the development community for its ability to craft beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.'),
      ),
    ),
    const SizedBox(
      height: 7,
    ),
    Expanded(
      flex: 35,
      child: GridView.builder(
        itemCount: picturUrl.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return cardbuilder(Url: picturUrl, index: index);
        },
      ),
    )
  ]);
}


Widget landScape() {
  return Row(children: [
    Expanded(
      flex: 38,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          height: 500,
          width: 500,
          child: Image.network(
              fit: BoxFit.cover,
              'https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJhbHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'),
        ),
      ),
    ),
    const SizedBox(
      width: 7,
    ),
    Expanded(
      flex: 62,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 7,
          ),
          const Text(
            'Zihadul Islam Fahim',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 7,
          ),
          const Expanded(
            flex: 18,
            child: Text(
                'Im Learing Flutter Because Flutter has rapidly gained traction in the development community for its ability to craft beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.'),
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            flex: 65,
            child: GridView.builder(
              itemCount: picturUrl.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return cardbuilder(Url: picturUrl, index: index);
              },
            ),
          )
        ],
      ),
    )
  ]);
}
