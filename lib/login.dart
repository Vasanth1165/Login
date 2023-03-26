import 'package:flutter/material.dart';
import 'signup.dart';


class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 75,
        title: const Text('Log In',style: TextStyle(fontSize: 35),),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(45.0),)
        ),
      ),
      body: SingleChildScrollView(
      child: Column(
          children: [
            const Image(image: AssetImage('assets/img/logo.png',),width: 200,height: 200,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right:50,bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Employee Id',
                    prefixIcon: const Icon(Icons.account_box_outlined,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide:const BorderSide(color: Colors.yellow,width: 2.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(color: Colors.green,width: 2.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(color: Colors.black,width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(color: Colors.green,width: 2.0),
                    ),
                    border: const OutlineInputBorder(

                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText:'Password',
                    suffixIcon : const Icon(Icons.remove_red_eye_outlined),
                    prefixIcon: const Icon(Icons.password_sharp),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(color: Colors.yellow,width: 2.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(color: Colors.green,width: 2.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(color: Colors.black,width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(color: Colors.green,width: 2.0),
                    ),
                    border: const OutlineInputBorder(

                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 50,right: 50),
              child: SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                  },
                  style: const ButtonStyle(
                    
                  ),
                  child: const Text('Log In',style: TextStyle(fontSize: 25),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:200,right: 10),
              child: TextButton(
                  child:Text('Sign Up',style: TextStyle(fontSize: 18,color: Colors.green.shade900),),
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
              }),
            )

          ]
      ),
      ),
    );
  }
}