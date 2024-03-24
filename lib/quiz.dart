import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void restartQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen ='question-screen';
    });
  }

  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
     setState(() {
       activeScreen =  'result-screen';
     });
    }
  }

  @override
  Widget build(context){
     Widget screenWidget = StartScreen(switchScreen);

     if (activeScreen == 'question-screen'){
       screenWidget =  QuestionsScreen(
         onSelectAnswer: chooseAnswer);
     }
     if(activeScreen == 'result-screen'){
       screenWidget = ResulstScreen(chosenAnswers: selectedAnswers, onRestart: restartQuiz);
     }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient:LinearGradient(
                    colors:[Colors.purple,Colors.indigo],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.mirror)  ),
            child:  screenWidget
      ),
     )
    );
  }

}