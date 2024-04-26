import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String name;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // return MaterialButton(
    //   onPressed: onPressed,
    //   color: ,
    //   child: Text(name),
    //   textColor: Colors.blue,

    // );
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[100],
        minimumSize: Size(60.0, 50.0),
      ),
      child: Text(
        name,
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
