import 'package:flutter/material.dart';
import 'afficheScreen.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
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
    return Column(
      children: [
        TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
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
    );
  }

  void _sendDataToAffiche() {
    final String emailData = emailController.text;
    final String passwordData = passwordController.text;
    // final  String data = passwordController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => DisplayScreen(email: emailData, password: passwordData),
      ),
    );
  }
}

/*class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {

  // this allows us to access the TextField text
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              controller: textFieldController,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),

          RaisedButton(
            child: Text(
              'Go to second screen',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              _sendDataToSecondScreen(context);
            },
          )

        ],
      ),
    );
  }

  // get the text in the TextField and start the Second Screen
  void _sendDataToSecondScreen(BuildContext context) {
    String textToSend = textFieldController.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(text: textToSend,),
        ));
  }
}*/
