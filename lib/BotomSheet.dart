import 'package:flutter/material.dart';

class bottomSheet extends StatelessWidget {
  const bottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (){
        showModalBottomSheet(
            backgroundColor: Colors.yellow,
            elevation: 0,
            isDismissible: false,
            enableDrag: true,
            context: context, builder: (BuildContext context){
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [ListTile(title: Text('apple'),),ListTile(title: Text('apple'),),ListTile(title: Text('apple'),)],);
        });
      },child: Text("press"),),
    );
  }
}
