import 'package:flutter/material.dart';
import 'package:flutterstateless/main.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  //function
  void getData() {
    print("Data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Text(
                "Welcome Back",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Login to Your Account",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 60.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  prefixIcon: const Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.visibility_off_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.blue),
                    onPressed: () {
                      getData();
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't Have an Account ?",
                      ),
                      TextButton(onPressed: () {}, child: Text("Sign Up"))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
