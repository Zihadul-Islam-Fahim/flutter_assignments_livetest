import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageList = [
    'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1925&q=80',
    'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1898&q=80',
    'https://images.unsplash.com/photo-1575537302964-96cd47c06b1b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80',
  ];
  List<Products> ProductList = [
    Products('Luis Fris', 'Orange', 0, 42, 50,
        'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1925&q=80'),
    Products('Air Jordan 12 Gym Red', 'Red', 0, 40, 100,
        'https://images.unsplash.com/photo-1575537302964-96cd47c06b1b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
    Products('Heiso SL', 'Black', 0, 39, 70,
        'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80')
  ];
  int totaloneItem = 0;
  int totalShopping = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Expanded(
          flex: 19,
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 40,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'My Shoe',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: ProductList.length,
                      itemBuilder: (context, index) {
                        Products product = ProductList[index];
                        return Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [BoxShadow(blurRadius: 0.2)]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AspectRatio(
                                  aspectRatio: 16 / 13,
                                  child: ClipRect(
                                    child: Image.network(product.productPhoto),
                                  ),
                                ),
                                Expanded(
                                  flex: 40,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 25,
                                            child: Text(
                                              '${product.productName}',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 15,
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Color: ',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '${product.productColor}    ',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  TextSpan(
                                                    text: 'Size: ',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '${product.productSize}    ',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 60,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex: 40,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 9,
                                                      top: 5,
                                                    ),
                                                    child: Container(
                                                      height: 45,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            if (product
                                                                    .productCount >
                                                                0) {
                                                              product
                                                                  .productCount--;
                                                              totaloneItem -=
                                                                  product
                                                                      .productValue;
                                                            } else {
                                                              product.productCount =
                                                                  0;
                                                            }
                                                          });
                                                        },
                                                        icon:
                                                            Icon(Icons.remove),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                                blurRadius: 1)
                                                          ],
                                                          shape:
                                                              BoxShape.circle),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                    flex: 20,
                                                    child: Text(
                                                        '${product.productCount}',
                                                        style: TextStyle(
                                                            fontSize: 21))),
                                                Expanded(
                                                  flex: 40,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 5, right: 9),
                                                    child: Container(
                                                      height: 45,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            product
                                                                .productCount++;
                                                            totaloneItem +=
                                                                product
                                                                    .productValue;
                                                          });
                                                        },
                                                        icon: Icon(Icons.add),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                                blurRadius: 1)
                                                          ],
                                                          shape:
                                                              BoxShape.circle),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: SizedBox(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Icon(Icons.more_vert),
                                            Text(
                                              '${product.productValue}\$',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w800),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '$totaloneItem\$',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9, right: 12, left: 12),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      height: 50,
                      child: MaterialButton(
                        height: double.infinity,
                        minWidth: double.infinity,
                        color: Colors.red,
                        onPressed: () {},
                        child: Text('Check Out'),
                      ),
                    ),
                  )
                ],
              ),
            ))
      ]),
    ));
  }
}

MySnapbar(msg, context) {

    return ScaffoldMessenger.of(context)

        .showSnackBar(SnackBar(content: Text(msg)));

  }

class Products {
  final productName;
  final productColor;
  int productCount;

  final productSize;
  int productValue;
  final productPhoto;

  Products(this.productName, this.productColor, this.productCount,
      this.productSize, this.productValue, this.productPhoto);
}
