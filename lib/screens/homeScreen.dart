import 'package:flutter/material.dart';
import 'package:login_screen/screens/search_bar.dart';
import 'package:login_screen/screens/login.dart';
import 'package:login_screen/screens/validation.dart';

import 'cute_interface.dart';
import 'input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My flutter Travaux Pratiques'),
      ),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
            child: Center(
              child: Text(
                'Listes des TPs',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              '1: Sign In',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const SignIn();
                }),
              );
            },
          ),
          ListTile(
            title: Text(
              '2: Search Bar',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const SearchBar();
                }),
              );
            },
          ),
          ListTile(
            title: Text(
              ' 3: Cute Interface',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const CuteInterface();
                }),
              );
            },
          ),
          ListTile(
            title: Text(
              '4: Validation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const MyValidation();
                }),
              );
            },
          ),
        ]),
      ),
      body: Center(
        child: const Text('Choisir le TP qui vous interesse dans le Drawer'),
      ),
    );
  }
}

/*
TODO: ici serait lié a une nouvelle pages.
Center(
child: Padding(
padding: const EdgeInsets.all(170.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
'Sign In',
style: TextStyle(
fontSize: 35,
fontWeight: FontWeight.bold,
),
),
Input(),
],
),
),
),*/
