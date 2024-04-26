import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
          elevation: 10,
          shadowColor: Colors.blue,
        ),
        body: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200],
                ),
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    alignment: Alignment.bottomRight,
                    child: const Text(
                      "Hisoblash uchun",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Function Buttons Row
              const ButtonRow(
                children: [
                  FunctionButton("SIN"),
                  FunctionButton("COS"),
                  FunctionButton("TAN"),
                  FunctionButton("LOG"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // Second Row - Brackets and Percentage
              const ButtonRow(
                children: [
                  FunctionButton("("),
                  FunctionButton(")"),
                  OperatorButton("√"),
                  OperatorButton("%"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // Number Pad (3 rows)
              const ButtonRow(
                children: [
                  NumberButton(1),
                  NumberButton(2),
                  NumberButton(3),
                  OperatorButton("*")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const ButtonRow(
                children: [
                  NumberButton(4),
                  NumberButton(5),
                  NumberButton(6),
                  OperatorButton("/")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const ButtonRow(
                children: [
                  NumberButton(7),
                  NumberButton(8),
                  NumberButton(9),
                  OperatorButton("-")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // Bottom Row - 0, ., Clear, Equals
              ButtonRow(
                children: [
                  NumberButton(0),
                  NumberButton(0),
                  ClearButton(),
                  OperatorButton("+"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ButtonRow(
                children: [EqualButton("=")],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Button Widgets
class FunctionButton extends StatelessWidget {
  final String text;

  const FunctionButton(this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          print("Function Button: $text"), // Replace with actual function logic
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[300],
        minimumSize: Size(80.0, 60.0),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final int number;

  const NumberButton(this.number);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print(
          "Number Button: $number"), // Replace with actual number input logic
      child: Text(
        number.toString(),
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 54, 190, 95),
        minimumSize: Size(80.0, 60.0),
      ),
    );
  }
}

class OperatorButton extends StatelessWidget {
  final String operator;

  const OperatorButton(this.operator);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print(
          "Operator Button: $operator"), // Replace with actual operator logic
      child: Text(
        operator,
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(80.0, 60.0),
      ),
    );
  }
}

class ClearButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print("Clear Button"), // Replace with actual clear logic
      child: Icon(
        Icons.backspace_outlined,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange[400],
        minimumSize: Size(80.0, 60.0),
      ),
    );
  }
}

class EqualButton extends StatelessWidget {
  final String equalOperator;

  const EqualButton(this.equalOperator);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print("clicked equally"),
      child: Text(
        equalOperator,
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 58, 37, 223),
        minimumSize: Size(350.0, 60.0),
        // minimumSize: Size.fromHeight(60),
      ),
    );
  }
}

// ButtonRow - Reusable Row for Grouping Buttons
class ButtonRow extends StatelessWidget {
  final List<Widget> children;

  const ButtonRow({required this.children});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }
}
