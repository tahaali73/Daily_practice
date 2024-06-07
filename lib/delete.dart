import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/BotomSheet.dart';
import 'package:practice/alert_dialog.dart';
import 'package:practice/dismissible.dart';

class del extends StatefulWidget {
  const del({super.key});

  @override
  State<del> createState() => _delState();
}

class _delState extends State<del> {
  int selectedindex= 0;
  PageController pagecont= PageController();
  List<Widget> widgets=[
    Text('home'),
  Text('Add'),
  Text('Search'),
  ];
  void onTapped(int index){
    setState(() {
      selectedindex = index;
    });
    pagecont.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    List fruit=['orange','apple','mango','bannana'];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>
        [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),],
      currentIndex: selectedindex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.red,
      onTap: onTapped,
      ),
      body: PageView(
        controller: pagecont,
          children: [alertBox(),
          dismiss(),
          bottomSheet()],
      ),
    );
}}