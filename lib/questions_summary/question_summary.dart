

import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget{
  const QuestionSummary(this.summaryData,{super.key});

  final List<Map<String,Object>> summaryData;

  Widget build(context) {
    return SizedBox(
          height: 400,
          child: SingleChildScrollView(
            child: Column(
              children:
                summaryData.map((data){
                return SummaryItem(data);
                },
                ).toList(),
            ),
          )
    );
  }
}