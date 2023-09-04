import 'package:flutter/material.dart';

class GridButton extends StatefulWidget{
  const GridButton(this.chance,this.index,this.switchChance,this.colorName,{super.key});
  final String chance;
  final void Function (int index)switchChance;
  final Color colorName;
  final int index;
  @override
  State<GridButton> createState() {
    return _GridButtonState();
  }
}
class _GridButtonState extends State<GridButton>{
  var status = "-";
  void onClick(){
    if(status != "-") {
      return;
    }
    setState(() {
      status = widget.chance;
    });
    widget.switchChance(widget.index);
  }
  @override
  Widget build(context){
    String text = "";
    if(status != "-")
    {
        text = status;
    }
    return ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            backgroundColor: widget.colorName ,
            foregroundColor: Colors.white,
        ),
        child: Text(text, textAlign: TextAlign.center,style: const TextStyle(fontSize: 20),)
    );
  }
}