import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    List fruits=['orages','apple','bannana','mango','taha','ali','classic',   ];
    return Scaffold(
      body: GridView.builder(
          itemCount: fruits.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index){
        return Card(
          child: Text(fruits[index],style: TextStyle(fontSize: 18),),
        );
      })
    );
  }
}
