import 'package:flutter/material.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  String firstname='';
  String Lastname='';
  String Email='';
  String Password='';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Form(key: _formKey,child: Column(children: [
        TextFormField(
          decoration: InputDecoration(hintText: 'Enter here'),
          key: ValueKey('firstname'),validator: (value){
          if(value.toString().isEmpty){
            return 'cannot be empty';
          }else{
            return null;
          }

        },onSaved: (value){
          firstname = value.toString();
        },)
      ],),))
    );
  }
}


