import 'package:flutter/material.dart';

class mediaquery extends StatelessWidget {
  const mediaquery({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body:Container(
        width: w,
        height: 200,
        child: Wrap(
        children: [
          Container(height: h,width: 50,color: Colors.amber,),
          Container(height: 50,width: 50,color: Colors.blue,),
          Container(height: 50,width: 50,color: Colors.white,),
          Container(height: 50,width: 50,color: Colors.green,),
          Container(height: 50,width: 50,color: Colors.red,),
          Container(height: 50,width: 50,color: Colors.pink,),
          Container(height: 50,width: 50,color: Colors.purple,),
          Container(height: 50,width: 50,color: Colors.black,),
          Container(height: 50,width: 50,color: Colors.brown,),
          Container(height: 50,width: 50,color: Colors.amber,),
        ],
      ),) ,

    );
  }
}
