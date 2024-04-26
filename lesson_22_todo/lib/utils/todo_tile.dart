import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  // final IconData taskIconData;
  final String date;

  ToDoTile({
    Key? key,
    required this.taskName,
    // required this.taskIconData,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 23, bottom: 10, top: 5),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: const Offset(4.0, 5.0),
                blurRadius: 12.0,
                spreadRadius: 1,
              ),
            ]),
        child: Row(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 35, left: 20),
              child: const Icon(
                Icons.check_circle,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                taskName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(top: 35),
              child: Text(
                date,
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
