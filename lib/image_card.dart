import 'package:flutter/material.dart';

Widget cardbuilder({required List Url, required int index}) {
  return SizedBox(
    width: 200,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 4,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    Url[index],
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
      ],
    ),
  );
}
