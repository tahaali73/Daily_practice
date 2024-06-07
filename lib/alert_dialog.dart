import 'package:flutter/material.dart';

class alertBox extends StatelessWidget {
  const alertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(onPressed: (){
        _showDilog(context);
      },child: Text('press'),),
    );
  }
}
Future<void> _showDilog(BuildContext context)async{
  return showDialog(context: context,
      builder: (BuildContext context){
    return AlertDialog(title: Text('This is an ERROR'),content:
      SingleChildScrollView(child: ListBody(children: [
        Text('taha'),
        Text('Soomro'),
      ],),),
    actions: [TextButton(onPressed: (){}, child: Text('Accept')),
    TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Decline'))],
    );
      } );
}