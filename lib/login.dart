import 'package:flutter/material.dart';
import 'package:login_and_signup/forgot_password.dart';
import 'package:login_and_signup/home_page.dart';
import 'package:login_and_signup/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 100,
          ),
          Column(
            children: [
              Container(
                alignment: AlignmentDirectional.center,
                child: Image.asset(
                  "images/logo.jpeg",
                  width: 200,
                ),
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    hintText: 'Username',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const HomePage();
                    }),
                  );
                },
                child: const Text("LOGIN"),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const ForgotPassword();
                          }),
                        );
                      },
                      child: const Text(
                        "Forgot Password?",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const SignUpPage();
                          }),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
