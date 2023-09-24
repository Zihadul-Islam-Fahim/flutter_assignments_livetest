import 'package:flutter/material.dart';

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
        child: Text(
          'Total Product ${widget.cartcount}',
          style: const TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
