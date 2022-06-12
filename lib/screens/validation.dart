import 'package:flutter/material.dart';

import 'input_form.dart';

class MyValidation extends StatefulWidget {
  const MyValidation({Key? key}) : super(key: key);

  @override
  State<MyValidation> createState() => _MyValidationState();
}

class _MyValidationState extends State<MyValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes validation des champs'),
        centerTitle: true,
      ),
      body: Column(children: [
       // Input(),
        InputForm(),
      ]),
    );
  }
}
