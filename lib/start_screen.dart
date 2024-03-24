import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class StartScreen extends StatelessWidget{
  const StartScreen (this.startQuiz, {super.key});


  final void Function() startQuiz;

  @override
  Widget build(context) {
    return   Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Image.asset('assets/images/quiz-logo.png',
                width: 300, color: const Color.fromARGB(80, 255, 255, 255), ),
            const SizedBox(height: 50),
             Text('Learn flutter the fun way!',
            style: GoogleFonts.lato(
                color: Colors.white54,
                fontSize: 24,
            ),
            ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                  foregroundColor: Colors.white),
              label: const Text('Start Quiz'), icon: const Icon(Icons.arrow_circle_right_rounded),)
        ],
      ),
    );
  }

}