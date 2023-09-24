import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      themeMode: ThemeMode.light,
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
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Count : ',
                style: TextStyle(fontSize: 20),
              ),
              Text('$count',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (count <= 0) {
                            count == 0;
                          } else {
                            count--;
                          }
                        });
                      },
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 25),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count++;
                          if (count >= 5) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Button Pressed $count times"),
                                    actions: [
                                      TextButton(
                                        child: Text(
                                          'Close',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      )
                                    ],
                                  );
                                });
                          }
                        });
                      },
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 25),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
