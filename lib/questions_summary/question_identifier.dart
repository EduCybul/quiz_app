import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{
const QuestionIdentifier({
  super.key,
  required this.isCorrect,
  required this.questionIndex
});

    final int questionIndex;
    final bool isCorrect;


  Widget build(context){
    final questionNumber = questionIndex + 1;
    return Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
                color: isCorrect
                    ? Colors.blue
                    :Colors.purple,
            borderRadius: BorderRadius.circular(100)
          ),
          child: Text(questionNumber.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 12
                )
          )
    );
  }

}