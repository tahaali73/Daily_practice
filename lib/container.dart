import 'package:flutter/material.dart';

class container extends StatelessWidget {
  const container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: ElevatedButton(onPressed:(){
        final snackbar= SnackBar(content: Text('error'),
        duration: const Duration(milliseconds: 3000),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      },child: Text('show'),)
    );
  }
}
