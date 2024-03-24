import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AnswerButton extends StatelessWidget{
  AnswerButton ({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build (context){
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
            backgroundColor: Colors.purple.shade900,
            foregroundColor: Colors.white70,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
        ),
        child: Text(answerText,
          textAlign: TextAlign.center,
          style: GoogleFonts.adamina(),
            ));
  }


}