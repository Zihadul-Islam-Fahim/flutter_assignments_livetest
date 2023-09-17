import 'package:flutter/material.dart';

void main() => runApp(MyApp());
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
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
         title: Text("My Shopping List"),
         actions: [Icon(Icons.shopping_cart)],
         centerTitle: true,
       ),
       body: ListView(
         children: [
           ListTile(leading: Icon(Icons.apple,),title: Text("Apples"),),
           ListTile(leading: Icon(Icons.access_time_filled_rounded,),title: Text("Watch"),),
           ListTile(leading: Icon(Icons.add_a_photo,),title: Text("Camera"),),
           ListTile(leading: Icon(Icons.account_balance_wallet_rounded,),title: Text("Wallet"),),
           ListTile(leading: Icon(Icons.ad_units_sharp,),title: Text("Phone"),),
         ],
       ),
     );
   }
 }
