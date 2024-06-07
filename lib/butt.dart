import 'package:flutter/material.dart';

class butt extends StatelessWidget {
  const butt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(child: TextButton(
        style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.yellow),
        backgroundColor: WidgetStateProperty.all(Colors.cyan),),
        child: Text('press',style: TextStyle(fontSize: 18),),
          onPressed: (){
          print('taha');
          }

      ),),),
    );
  }
}
