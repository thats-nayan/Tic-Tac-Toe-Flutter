
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget{
  const OptionButton(this.text,this.onClick,{super.key});
  final void Function() onClick;
  final String text;
  @override
  Widget build(context){
    return ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            backgroundColor: const Color.fromARGB(255, 33, 1, 95),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )
        ),
        child: Text(text , textAlign: TextAlign.center,)
    );
  }
}