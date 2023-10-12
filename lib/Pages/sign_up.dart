import 'package:flutter/material.dart';

import '../../constants.dart';
import '../widgets/submit_button.dart';
import '../widgets/text_field.dart';
import 'login_page.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: blue,
        body: SingleChildScrollView(child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const Text("Register", style: TextStyle(color: Colors.white,fontSize:40),),
              const SizedBox(height: 10,),
              const Text("Create your account", style: TextStyle(color: Colors.white,fontSize:20),),
              const SizedBox(height:40,),
              const CustomTextField(icon: Icons.person, text: 'Full name'),
              const SizedBox(height:20,) ,
              const CustomTextField(icon: Icons.phone, text: 'Phone number'),
              const SizedBox(height:20,) ,
              const CustomTextField(icon: Icons.recent_actors, text: 'National ID'),
              const SizedBox(height:20,) ,
              const CustomTextField(icon: Icons.email, text: 'Email'),
              const SizedBox(height:20,) ,
              const CustomTextField(icon: Icons.lock, text: 'Password'),
              const SizedBox(height:40,),
              SubmitButton(text: 'SIGN UP', onPressed: () {  }, color1: amber,color2: pink,),
              const SizedBox(height:5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account ?", style: TextStyle(color: Colors.white,fontSize:15),),
                  TextButton(onPressed: ()=>Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  ),child: const Text("Sign In", style: TextStyle(color: Colors.white,
                      fontSize:18 , decoration: TextDecoration.underline),))
                ],
              ) ,
            ],
          ),
        ),),
      ),
    );
  }
}