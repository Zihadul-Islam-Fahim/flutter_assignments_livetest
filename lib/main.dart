import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectionScreen(),
    );
  }
}

class SelectionScreen extends StatefulWidget {
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'Item 6', 'Item 7', 'Item 8', 'Item 9'];
  List<bool> selected = List.filled(9, false);

  int getSelectedCount() {
    return selected.where((item) => item).length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selection Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12,right: 12),
        child: ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              color: selected[index] ? Colors.blue : Colors.white,
              child: ListTile(
                title: Text(
                  items[index],
                  style: TextStyle(color: selected[index] ? Colors.white : Colors.black),
                ),
                onTap: () {
                  setState(() {
                    selected[index] = !selected[index];
                  });
                },
                selected: selected[index],
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 8,);
        },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Selected Items'),
                content: Text('Number of selected items: ${getSelectedCount()}'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
