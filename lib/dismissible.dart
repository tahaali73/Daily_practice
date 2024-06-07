import 'package:flutter/material.dart';

class dismiss extends StatelessWidget {
  const dismiss({super.key});

  @override
  Widget build(BuildContext context) {
    List fruit=['apple','orange','bannana','mango',];
    return Scaffold(
      body: ListView.builder(itemCount: fruit.length,
          itemBuilder: (context, index){
        final fruits = fruit[index];
        return Dismissible(
            onDismissed:(direction){
              if(direction == DismissDirection.startToEnd ){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(fruit[index]),
                  backgroundColor: Colors.red,
                ));
              }else{ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(fruit[index]),
              backgroundColor: Colors.green,));}
            }


        ,key: Key(fruits),
            background: Container(color: Colors.red,),
            secondaryBackground: Container(color: Colors.green,),
            child: Card(child: ListTile(title: Text(fruit[index]),),));
          })
    );
  }
}
