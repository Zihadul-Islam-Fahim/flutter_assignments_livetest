import 'package:flutter/material.dart';
import 'Todos.dart';
import 'UpdateTodoModal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Todos> taskList = [];
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _subTitleTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.blue,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Form(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                        controller: _titleTEController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Add Title",
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                        controller: _subTitleTEController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Add Description",
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                        width: 200,
                        child: ElevatedButton(
                            onPressed: () {
                              Todos todos = Todos(
                                  title: _titleTEController.text.trim(),
                                  subTitle: _subTitleTEController.text.trim());
                              addTask(todos);
                              _titleTEController.clear();
                              _subTitleTEController.clear();
                            },
                            child: const Text("Add"))),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 65,
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 8,
                    );
                  },
                  itemCount: taskList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text("${index + 1}"),
                      ),
                      title: Text(taskList[index].title),
                      subtitle: Text(taskList[index].subTitle),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                      tileColor: Colors.grey[300],
                      onLongPress: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Alert'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showModalBottomSheet(
                                            isScrollControlled: true,
                                            context: context,
                                            builder: (context) {
                                              return UpdateTodoModal(
                                                index: index,
                                                updateCallback: updateTasktitle,
                                                title: taskList[index].title,
                                                subTitle:
                                                    taskList[index].subTitle,
                                              );
                                            });
                                      },
                                      child: const Text("Edit")),
                                  const SizedBox(
                                    width: 150,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        deleteTask(index);
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Delete")),
                                ],
                              );
                            });
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  addTask(Todos taskDetails) {
    taskList.add(taskDetails);
    setState(() {});
  }

  updateTasktitle(index, title, subtitle) {
    taskList[index].title = title;
    taskList[index].subTitle = subtitle;
    setState(() {});
  }

  deleteTask(int index) {
    taskList.removeAt(index);
    setState(() {});
  }
}
