import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem(this.itemData, {super.key});

  final Map<String,Object> itemData;

  Widget build ( context){
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          QuestionIdentifier(
              isCorrect: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
       SizedBox(width: 20),
      Expanded(
       child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemData['question'] as String,
              style: GoogleFonts.lato(
                ),
    ),
    const SizedBox(height: 5),
    Text(itemData['user_answer'] as String,
          style:
    TextStyle(
    color:
    Colors.pinkAccent.shade100
      ),
    ),
    Text(itemData['correct_answer'] as String,
        style: TextStyle(color: Colors.blue.shade200),
    ),

    ],
    ))

    ]
    );

  }

}