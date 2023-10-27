import 'package:creativa_courses_app/Pages/sign_up.dart';
import 'package:flutter/material.dart';
import '../Widgets/circular_navigation_bar.dart';
import '../Widgets/image_container.dart';
import '../Widgets/submit_button.dart';
import '../Widgets/text_field.dart';
import '../constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blue,
      body: LayoutBuilder(
        builder:(context, constraint){
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
              BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    ImageContainer(
                      size: size,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Welcome Back ",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Login to your account",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const CustomTextField(icon: Icons.email, text: 'Email'),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextField(icon: Icons.lock, text: 'Password'),
                    const Expanded(
                      child: SizedBox(
                      ),
                    ),
                    SubmitButton(
                      width:size.width*0.8  ,
                      text: 'LOGIN',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CircularNavigationBar())),
                      color1: amber,
                      color2: pink,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account ?",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()),
                                ),
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}

class ReplacementLoginScreen extends StatelessWidget {
  const ReplacementLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image.asset(
                  "assets/images/Logo2.png",
                  width:100,
                  height: 150,
                )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Login ",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
               const Text(
                  "Login to your account to continue",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Email ",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ) ,
                      border: OutlineInputBorder(
                        borderSide:BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    filled: true,
                      prefixIcon: const Icon(Icons.email , ),
                      hintText: "Enter your email",
                      //hintStyle: TextStyle(color: amber)
                    ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Password ",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder:  OutlineInputBorder(
                      borderSide:BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ) ,
                      enabledBorder: OutlineInputBorder(
                        borderSide:BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ) ,
                      border:  OutlineInputBorder(
                        borderSide:BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ) ,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock,
                       // color: amber,
                      ),
                      hintText: "Enter your password",
                      //hintStyle: TextStyle(color: pink)
                    ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Forgot Password ?")],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: SubmitButton(
                    width:size.width*0.8  ,
                    text: 'LOGIN',
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CircularNavigationBar())),
                    color1:  amber,
                    color2: amber,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account ?",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()),
                            ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: blue, fontSize: 18),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
