import 'package:flutter/material.dart';
class IconExample extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Container(
            decoration:BoxDecoration(border: Border.all(),color:Colors.white),
            child:Center(
                child:Text('Welcome to Flutter Text',
                //textdecoration:TextDeoration.lter,
                style:TextStyle(fontSize:20,
                color:Colors.redAccent,
                ),
                ),
            ),
        );
    }
}