import 'package:flutter/material.dart';
import 'package:lesson_22_todo/pages/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSaved,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Colors.black,
      content: Container(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //? get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter new task",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //? buttons -> save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(name: "Save", onPressed: onSaved),
                const SizedBox(
                  width: 8,
                ),
                MyButton(name: "Cancel", onPressed: onCancel)
              ],
            ),
          ],
        ),
      ),
    );
  }
}