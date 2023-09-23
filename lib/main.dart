import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class Product {
  String name = '';
  double? price= 0;
  int? count = 0;

  Product(this.name, this.price, this.count);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List productlist = [
    Product('Monitor', 250, 0),
    Product('Mouse', 20, 0),
    Product('Keyboard', 50, 0),
    Product('Mouse Pad', 5, 0),
    Product('Book', 20, 0),
    Product('Cofee Mug', 5, 0),
    Product('Earpods', 70, 0),
    Product('Mobile Cover', 15, 0),
    Product('Sunglass', 20, 0),
    Product('Umbrella', 5, 0),
    Product('Router', 50, 0),
    Product('Coffee Mug', 5, 0),
    Product('Soundbox', 100, 0),
    Product('Calculator', 30, 0),
  ];
  int? cart = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shopping_cart),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Cartpage(cartcount: cart)));
        },
      ),
      body: ListView.builder(
          itemCount: productlist.length,
          itemBuilder: (context, int i) {
            Product product = productlist[i];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price}'),
              trailing: Column(
                children: [
                  Text('Count: ${product.count}'),
                  Expanded(
                      child: ElevatedButton(
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      setState(() {
                        product.count = product.count! + 1;
                        if (product.count == 5) {
                          setState(() {
                            cart = cart! + 1;
                          });
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Congratulations !'),
                                  content:
                                      Text('You\'ve bought 5 ${product.name}!'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Ok'))
                                  ],
                                );
                              });
                        } else if (product.count == 6) {
                          product.count = 5;
                        }
                      });
                    },
                  ))
                ],
              ),
            );
          }),
    );
  }
}

class Cartpage extends StatefulWidget {
  final int? cartcount;

  const Cartpage({super.key, required this.cartcount});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Total Product ${widget.cartcount}',style: const TextStyle(fontSize: 26),),
      ),
    );
  }
}
