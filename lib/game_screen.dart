
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/grid_button.dart';
import 'package:tic_tac_toe/option_button.dart';

class GameScreen extends StatefulWidget{
  const GameScreen(this.onReset,{super.key});
  final void Function () onReset;
  @override
  State<GameScreen> createState() {
    return _GameScreenState();
  }
}

class _GameScreenState extends State<GameScreen> {
  String chance = "X";
  final xSquares = [];
  final oSquares = [];
  final greenSquares = [];
  void switchChance(int index){
    if(chance == "X") {
      xSquares.add(index);
      if(xSquares.contains(1) && xSquares.contains(4) && xSquares.contains(7)){
        greenSquares.add(1);
        greenSquares.add(4);
        greenSquares.add(7);
      }
      else if(xSquares.contains(2) && xSquares.contains(5) && xSquares.contains(8)){
        greenSquares.add(2);
        greenSquares.add(5);
        greenSquares.add(8);
      }
      else if(xSquares.contains(3) && xSquares.contains(6) && xSquares.contains(9)){
        greenSquares.add(3);
        greenSquares.add(6);
        greenSquares.add(9);
      }
      else if(xSquares.contains(1) && xSquares.contains(2) && xSquares.contains(3)){
        greenSquares.add(1);
        greenSquares.add(2);
        greenSquares.add(3);
      }
      else if(xSquares.contains(4) && xSquares.contains(5) && xSquares.contains(6)){
        greenSquares.add(4);
        greenSquares.add(5);
        greenSquares.add(6);
      }
      else if(xSquares.contains(7) && xSquares.contains(8) && xSquares.contains(9)){
        greenSquares.add(7);
        greenSquares.add(8);
        greenSquares.add(9);
      }
      else if(xSquares.contains(1) && xSquares.contains(5) && xSquares.contains(9)){
        greenSquares.add(1);
        greenSquares.add(5);
        greenSquares.add(8);
      }
      else if(xSquares.contains(3) && xSquares.contains(5) && xSquares.contains(7)){
        greenSquares.add(3);
        greenSquares.add(5);
        greenSquares.add(7);
      }
      setState(() {
        if(greenSquares.isEmpty) {
          chance = "O";
        }
      });
    }
    else{
      oSquares.add(index);
      if(oSquares.contains(1) && oSquares.contains(4) && oSquares.contains(7)){
        greenSquares.add(1);
        greenSquares.add(4);
        greenSquares.add(7);
      }
      else if(oSquares.contains(2) && oSquares.contains(5) && oSquares.contains(8)){
        greenSquares.add(2);
        greenSquares.add(5);
        greenSquares.add(8);
      }
      else if(oSquares.contains(3) && oSquares.contains(6) && oSquares.contains(9)){
        greenSquares.add(3);
        greenSquares.add(6);
        greenSquares.add(9);
      }
      else if(oSquares.contains(1) && oSquares.contains(2) && oSquares.contains(3)){
        greenSquares.add(1);
        greenSquares.add(2);
        greenSquares.add(3);
      }
      else if(oSquares.contains(4) && oSquares.contains(5) && oSquares.contains(6)){
        greenSquares.add(4);
        greenSquares.add(5);
        greenSquares.add(6);
      }
      else if(oSquares.contains(7) && oSquares.contains(8) && oSquares.contains(9)){
        greenSquares.add(7);
        greenSquares.add(8);
        greenSquares.add(9);
      }
      else if(oSquares.contains(1) && oSquares.contains(5) && oSquares.contains(9)){
        greenSquares.add(1);
        greenSquares.add(5);
        greenSquares.add(8);
      }
      else if(oSquares.contains(3) && oSquares.contains(5) && oSquares.contains(7)){
        greenSquares.add(3);
        greenSquares.add(5);
        greenSquares.add(7);
      }
      setState(() {
        if(greenSquares.isEmpty) {
          chance = "X";
        }
      });
    }
  }
  @override
  Widget build(context){
    String text = "Turn of player $chance";
    if(greenSquares.isEmpty == false){
      text = "Player $chance wins";
    }
    else if(xSquares.length + oSquares.length == 9){
      text = "Draw";
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(text,style: const TextStyle(fontSize: 30),),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GridButton(chance,1,switchChance,greenSquares.contains(1) ? Colors.green : Colors.black),
                  GridButton(chance,2,switchChance,greenSquares.contains(2) ? Colors.green : Colors.black),
                  GridButton(chance,3,switchChance,greenSquares.contains(3)? Colors.green : Colors.black),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GridButton(chance,4,switchChance,greenSquares.contains(4) ? Colors.green : Colors.black),
                  GridButton(chance,5,switchChance,greenSquares.contains(5) ? Colors.green : Colors.black),
                  GridButton(chance,6,switchChance,greenSquares.contains(6) ? Colors.green : Colors.black),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GridButton(chance,7,switchChance,greenSquares.contains(7) ? Colors.green : Colors.black),
                  GridButton(chance,8,switchChance,greenSquares.contains(8) ? Colors.green : Colors.black),
                  GridButton(chance,9,switchChance,greenSquares.contains(9) ? Colors.green : Colors.black),
                ],
              )
            ],
          ),
          OptionButton("Restart", widget.onReset),
        ],
      ),
    );
  }
}