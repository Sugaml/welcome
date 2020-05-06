import 'package:flutter/material.dart';
class TextExample extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Container(
            decoration:BoxDecoration(color:Colors.white),
            child:Center(
              child:Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
  ],
),
            ),
        );
    }
}
