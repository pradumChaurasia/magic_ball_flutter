import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.lightBlueAccent,
    appBar: AppBar(
      title: const Text('Ask Me Anything'),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
    body: SafeArea(
        child:MagicBall(

        )
    ),
  )));
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballnumber = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Text('Ask your Problem!',
        style:TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'SourceSans3',
          color: Colors.teal.shade100,
          fontSize: 20.0,
          letterSpacing: 2.5,
        ),
        ),
        SizedBox(

            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.white,
            )
        ),

        TextButton(
        onPressed: (){
          setState(() {
            ballnumber=Random().nextInt(5)+1;
          });
        },
        child: Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Image.asset('images/ball$ballnumber.png'),
        ),
      ),
    ]
    );


  }
}
