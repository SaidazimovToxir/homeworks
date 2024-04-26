import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bank card"),
          backgroundColor: Colors.blue[100],
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.black,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),

              // First bank card created
              Container(
                width: 350,
                height: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const RadialGradient(
                    colors: <Color>[
                      Color(0xffE42C66),
                      Color(0xffF55B46),
                    ],
                    center: Alignment(-0.5, -0.6),
                    radius: 2,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffF55B46),
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 12.0,
                      spreadRadius: 2.0,
                    ),
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(left: 20, top: 15),
                      child: const Text(
                        "BANK NAME",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text(
                        "CREDIT CARD",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 20, top: 2),
                          child: Image.asset(
                            'images/chip.png',
                            width: 60,
                            height: 60,
                          ),
                        ),
                        const SizedBox(
                          width: 220,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'images/nfc.png',
                            width: 30,
                            height: 30,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 20, top: 5),
                      child: const Text(
                        "5282 3456 7890 1289",
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(left: 20, top: 10),
                          child: const Text(
                            "LOREM IPSUM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "01 / 25",
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                letterSpacing: 3),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 140,
              ),

              // Second Bank card created
              Container(
                width: 350,
                height: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const RadialGradient(
                    colors: <Color>[
                      Color(0xff9C2CF3),
                      Color(0xff3A49F9),
                    ],
                    center: Alignment(-0.5, -0.6),
                    radius: 2,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xff3A49F9),
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 12.0,
                      spreadRadius: 2.0,
                    ),
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(left: 20, top: 15),
                          child: const Text(
                            "CREDIT CARD",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 100, top: 15),
                          child: const Text(
                            "BANK NAME",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 20, top: 0),
                      child: Image.asset(
                        'images/chip.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 20, top: 5),
                      child: const Text(
                        "5282 3456 7890 1289",
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text(
                        "Lorem ipsum",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: const EdgeInsets.only(right: 20),
                      child: const Text(
                        "01 / 25",
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            letterSpacing: 3),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: const Text(
                        "LOREM IPSUM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}