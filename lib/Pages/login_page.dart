import 'package:creativa_courses_app/Pages/sign_up.dart';
import 'package:flutter/material.dart';

import '../Widgets/circular_navigation_bar.dart';
import '../Widgets/image_container.dart';
import '../Widgets/submit_button.dart';
import '../Widgets/text_field.dart';
import '../constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blue,
      body: SingleChildScrollView(
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
            const SizedBox(
              height: 60,
            ),
            SubmitButton(
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
          ],
        ),
      ),
    );
  }
}

class ReplacementLoginScreen extends StatelessWidget {
  const ReplacementLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                width: 150,
                height: 120,
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
              Text(
                "Login to your account",
                style: TextStyle(
                    color: textFieldGrey,
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
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: blue, width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: blue, width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(Icons.email),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: textFieldGrey)),
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
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: blue, width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: textFieldGrey)),
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
                  text: 'LOGIN',
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CircularNavigationBar())),
                  color1: amber,
                  color2: pink,
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
    );
  }
}
