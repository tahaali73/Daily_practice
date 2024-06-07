import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(color: Colors.grey,
                child: Row(children: [SizedBox(width: 20,),
                  CircleAvatar(radius: 40,backgroundImage: NetworkImage('https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),)
                  ,SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                      Text('Frog'),
                      SizedBox(height:2,),
                      Text('This is an animal')

])
                ],),)),
            ListTile(leading: Icon(Icons.folder),
              title: Text('Files',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),),
            ListTile(leading: Icon(Icons.delete),
              title: Text('Delete',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),),
            ListTile(leading: Icon(Icons.star),
              title: Text('Favourite',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),),
            ListTile(leading: Icon(Icons.group),
              title: Text('People',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),),
            ListTile(leading: Icon(Icons.logout),
            title: Text('Logout',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),),
          ],),
        ),
      ),
      appBar: AppBar(title: Text('drawer'),),
      body: Center(child: Container(child: Text('hello'),)),
    );
  }
}
