import 'package:flutter/material.dart';

import 'afficheScreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    emailController.addListener(() {
      print(emailController.text);
      print(passwordController.text);
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          children: [
            Text(
              'Recuperer les valeurs entrer sur une autre page',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'samueldoe@gmail.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
              width: 5,
            ),
            ElevatedButton(
              onPressed: () {
                //print(emailController.text);
                _sendDataToAffiche();
              },
              child: const Text('Sign In'),
            )
          ],
        ),
      ),
    );
  }

  void _sendDataToAffiche() {
    final String emailData = emailController.text;
    final String passwordData = passwordController.text;
    // final  String data = passwordController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) =>
            DisplayScreen(email: emailData, password: passwordData),
      ),
    );
  }
}
