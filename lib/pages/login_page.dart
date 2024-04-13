import 'package:daymanager_core/components/dmtextfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),

            //logo
            const Icon(
              Icons.lock,
              size: 100,
            ),

            const SizedBox(height: 30),
            //title

            const Text(
              "Добро пожаловать!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            // const SizedBox(height: 25),

            Container(
              width: 400,
              padding: const EdgeInsets.all(20),
              child: const Column(
                children: [
                  //username textfield
                  DMTextField(
                    controller: usernameController,
                    hintText: "",
                    obsecureText: false,
                  ),

                  SizedBox(height: 15),

                  //password textfield
                  DMTextField(
                    controller: passwordController,
                    hintText: "",
                    obsecureText: true,
                  ),
                ],
              ),
            )

            //forgot password

            //sign in btn

            // google

            //register
          ],
        ),
      )),
    );
  }
}
