import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';
import 'package:quiz_app/questions_summary/question_summary.dart';


class ResulstScreen extends StatelessWidget{
  const ResulstScreen({super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String,Object>> getSummary(){
    final List<Map<String,Object>> summary = [];
    for(var i=0; i < chosenAnswers.length; i++){
          summary.add({
            'question_index': i,
            'question' : questions[i].text,
            'correct_answer' : questions[i].answers[0],
            'user_answer' : chosenAnswers[i]
          });
    }
    return summary;
  }

  @override
  Widget build (context){
    final summaryData = getSummary();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data){
      return data['user_answer'] == data['correct_answer'] ;
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('You answered $numCorrectQuestions out of $numTotalQuestions answers correctly!',
               style: const TextStyle(color: Colors.black, fontSize: 20,
               fontWeight: FontWeight.bold,
               )
             ),
            const SizedBox(height: 30),
            QuestionSummary(getSummary()),
            const SizedBox(height: 30),
            TextButton.icon(
                onPressed: onRestart,
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                icon: const Icon(Icons.refresh),
                label : const Text('Restart Quiz'))
        ],
        )
      )
    );
  }
}