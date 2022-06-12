import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Form(
          key: formKey,
          child: TextFormField(
            validator: (String? value) {
              //print('Validateur called');
             /* if (value != null && value.contains('@')) {
                //Text('veuillez entrer un nom');
                'veuillez entrer un nom';
              }*/
// Todo: ligne de code à revoir je ne maitrise pas encore bien
              return (value != null && value.contains('@')) ? 'le nom ne doit pas contenir @' : null;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Nom *',
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            formKey.currentState?.validate();
          },
          child: Text('Soummetre'),
        ),
      ],
    );
  }
}
