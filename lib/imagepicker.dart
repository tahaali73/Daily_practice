import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class imagepick extends StatefulWidget {
  const imagepick({super.key});

  @override
  State<imagepick> createState() => _imagepickState();
}

class _imagepickState extends State<imagepick> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(color: Colors.grey,
          width: double.infinity,height: 300,child: Center(
          child: file==null? Text('image not picked'): Image.file(File(file!.path),
          fit: BoxFit.cover,),
        ),),
        ElevatedButton(onPressed: () async{
          final XFile? photo =
              await _picker.pickImage(source: ImageSource.gallery);
          setState(() {
            file = photo;
          });
        },child: Text('Pick image'),
          style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Colors.blue)),)
        ],),),
    );
  }
}
