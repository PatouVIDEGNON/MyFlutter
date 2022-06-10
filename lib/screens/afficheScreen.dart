import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  final String email;
  final String password;

  const DisplayScreen({Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Affiche des données'),
      ),
      body:
         Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Mon email : $email'),
              Text('Mon email : $password'),

            ],
          ),
        ),

    );
  }
}
