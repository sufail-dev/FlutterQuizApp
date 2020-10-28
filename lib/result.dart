import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  Result(this.result);
  String get totalResult {
    var resultInter = 'you did it';
    if (result < 12) {
      resultInter = 'you are an awesome person';
    } else if (result < 50) {
      resultInter = 'you are not a awesome person';
    }
    else{
      resultInter='You are greate';
    }
    return resultInter;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        totalResult,
        style:TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.blueAccent ),
      ),
    );
  }
}
