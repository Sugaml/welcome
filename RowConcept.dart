import 'package:flutter/material.dart';
class TextExample extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Container(
            decoration:BoxDecoration(color:Colors.white),
            child:Center(
              child:Column(
            children: <Widget>[
                 Text('Deliver features faster'),
                  Text('Craft beautiful UIs'),
                  Expanded(
                  child: FittedBox(
                  fit: BoxFit.contain, // otherwise the logo will be tiny
                  child: const FlutterLogo(),
      ),
    ),
    Container(
  constraints: BoxConstraints.expand(
    height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
  ),
  padding: const EdgeInsets.all(8.0),
  color: Colors.blue[600],
  alignment: Alignment.center,
  child: Text('Hello World',
    style: Theme.of(context)
        .textTheme
        .display1
        .copyWith(color: Colors.white)),
  transform: Matrix4.rotationZ(0.1),
)
  ],
)
),
 );
}
}
