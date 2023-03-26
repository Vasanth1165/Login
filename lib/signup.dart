import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        toolbarHeight: 75,
        backgroundColor: Colors.green.shade500,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(45.0),)
        ),
        title: const Text('Sign Up',style: TextStyle(fontSize: 35),),
      ),
    );
  }
}
