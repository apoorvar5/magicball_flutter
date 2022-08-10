import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp (
    home: Scaffold(
      backgroundColor: Colors.lightBlue,
      body: MagicBall(),
      ),
    ),
  );
}
class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var num=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: (){
            setState((){
              num=Random().nextInt(5)+1;
            });
          },
          child: Image.asset('images/ball$num.png'),
      ),
    );
  }
}


