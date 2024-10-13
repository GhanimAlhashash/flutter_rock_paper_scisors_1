import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int rps1 = 1;
  int rps2 = 1;
  String result = "";

  void play() {
    rps1 = Random().nextInt(2) + 1;
    print('$rps1');
    rps2 = Random().nextInt(2) + 1;
    print('$rps2');

    if (rps1 == rps2) {
      result = "tie";
    } else if (rps1 == 1 && rps2 == 3) {
      result = 'player 1 wins';
    } else if (rps1 == 2 && rps2 == 1) {
      result = 'player 1 wins';
    } else if (rps1 == 3 && rps2 == 2) {
      result = 'player 1 wins';
    } else {
      result = "player 2 wins";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Rock Paper Scissors!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.orange,
            centerTitle: true,
          ),
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/$rps1.png',
                        width: 120,
                        height: 120,
                      )),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/$rps2.png',
                        width: 120,
                        height: 120,
                      ))
                ],
              ),
              Text(
                result,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  color: Colors.orange,
                  margin: EdgeInsets.all(30),
                  child: ElevatedButton(
                    onPressed: play,
                    child: Text("Jan, Ken, Go!"),
                  ),
                )
              ]),
            ]),
          ),
        ));
  }
}
