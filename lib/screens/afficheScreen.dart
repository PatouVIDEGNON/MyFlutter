import 'package:flutter/material.dart';

class Affiche extends StatelessWidget {
  final String email;
  final String password;

  const Affiche({Key? key, required this.email, required this.password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Affiche des données'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              email
            ),
            Text(
              password,
            ),
          ],
        ),
      ),
    );
  }
}



