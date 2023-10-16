import 'package:flutter/material.dart';

class UpdateTodoModal extends StatefulWidget {
  String title;
  String subTitle;
  int index;
  Function updateCallback;

  UpdateTodoModal(
      {super.key,
      required this.title,
      required this.index,
      required this.updateCallback,
      required this.subTitle});

  @override
  State<UpdateTodoModal> createState() => _UpdateTodoModalState();
}

class _UpdateTodoModalState extends State<UpdateTodoModal> {
  late TextEditingController titleTEController;

  late TextEditingController subTitleTEController;

  @override
  void initState() {
    super.initState();
    titleTEController = TextEditingController(text: widget.title.toString());
    subTitleTEController =
        TextEditingController(text: widget.subTitle.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16,
          right: 16,
          top: 16),
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Update', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: titleTEController,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              controller: subTitleTEController,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.updateCallback(widget.index, titleTEController.text,
                        subTitleTEController.text);
                    Navigator.pop(context);
                  });
                },
                child: const Text('Update'))
          ],
        ),
      ),
    );
  }
}
