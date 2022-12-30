import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFABB1),
        appBar: AppBar(
          backgroundColor: Color(0xffFFABB1),
          centerTitle: true,
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
        ),
        body: QuestionPuzzle(),
      ),
    ),
  );
}

class QuestionPuzzle extends StatefulWidget {
  const QuestionPuzzle({Key? key}) : super(key: key);
  @override
  State<QuestionPuzzle> createState() => _QuestionPuzzleState();
}

class _QuestionPuzzleState extends State<QuestionPuzzle> {
  var randomNum = 1;
  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  iconSize: 300,
                  icon: Image.asset('images/ball$randomNum.png'),
                  onPressed: () {
                    setState(() {
                      randomNum = Random().nextInt(5) + 1;
                      print('generated random number  = $randomNum');
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      );
  }
}


