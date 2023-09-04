import 'package:flutter/material.dart';
import 'package:tic_tac_toe/option_button.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.onPlay,{super.key});
  final void Function () onPlay;
  @override
  Widget build(context){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("TIC TAC TOE ", style: GoogleFonts.robotoFlex(fontSize: 30),),
            Image.asset("assets/images/tic_tac_toe_bg_remove.png",),
            OptionButton("Play",onPlay),
          ],
        ),
      );
  }
}