import 'package:flutter/material.dart';

class tabbar extends StatelessWidget {
  const tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(title: Text('Messenger app'),
      bottom: TabBar(tabs: [
        Tab(icon: Icon(Icons.call),text: 'Call',),
        Tab(icon: Icon(Icons.chat),text: 'Chat',),
        Tab(icon: Icon(Icons.chat_rounded),text: 'Status',),
      ],),),
    ),);
  }
}
