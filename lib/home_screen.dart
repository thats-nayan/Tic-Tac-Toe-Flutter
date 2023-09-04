
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game_screen.dart';
import 'package:tic_tac_toe/start_screen.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}
class _HomeScreenState extends State<HomeScreen>{
  var activeScreen = 'start-screen';
  void onReset(){
    setState(() {
      activeScreen = 'start-screen';
    });
  }
  void onPlay(){
    setState(() {
      activeScreen = 'game-screen';
    });
  }
  @override
  Widget build(context){
    Widget screenWidget = StartScreen(onPlay);
    if(activeScreen == 'game-screen')
    {
      screenWidget = GameScreen(onReset);
    }
    else{
      screenWidget = StartScreen(onPlay);
    }
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const  BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple,Colors.deepPurpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: screenWidget,
          )
      ),
    );
  }
}