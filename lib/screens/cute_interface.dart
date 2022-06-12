import 'package:flutter/material.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carbon_icons/carbon_icons.dart';

class CuteInterface extends StatefulWidget {
  const CuteInterface({Key? key}) : super(key: key);

  @override
  State<CuteInterface> createState() => _CuteInterfaceState();
}

class _CuteInterfaceState extends State<CuteInterface> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('My Personal Journal');

//  final items = List<String>.generate(6, (i) => "Item $i");

  /* @override
  void initState() {
    super.initState();
 setState((){});
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        //TODO : à revoir en utilisant les propriété action de  AppBar()
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Card(
              //shadowColor: Colors.red,
              //  shape: borderOnForeground,
              //color: Colors.white30,
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: ListTile(
              title: TextField(
                //cursorRadius: Radius.circular(10.0),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white70,
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    //borderSide: BorderSide(width: 3, color: Colors.black26),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black12,
                    ),
                    margin: const EdgeInsets.all(15),
                    /*shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),*/
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.alarm,
                        //  size: 30,
                      ),
                      color: Colors.red,
                      iconSize: 30,
                      splashRadius: 20,
                      splashColor: Colors.black45,
                    ),
                  ),
                  Text(
                    'My alarm',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black12,
                    ),
                    margin: const EdgeInsets.all(15),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_box,
                        //  size: 30,
                      ),
                      color: Colors.red,
                      iconSize: 30,
                      splashRadius: 20,
                      splashColor: Colors.black45,
                    ),
                  ),
                  Text(
                    'My followers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black12,
                    ),
                    margin: const EdgeInsets.all(15),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.monetization_on_outlined,
                        //  size: 30,
                      ),
                      color: Colors.red,
                      iconSize: 30,
                      splashRadius: 20,
                      splashColor: Colors.black45,
                    ),
                  ),
                  Text(
                    'Paiement',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black12,
                    ),
                    margin: const EdgeInsets.all(15),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.upcoming,
                        //  size: 30,
                      ),
                      color: Colors.red,
                      iconSize: 30,
                      splashRadius: 20,
                      splashColor: Colors.black45,
                    ),
                  ),
                  Text(
                    'Target',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(45),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black12,
              //border: ,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Create New Invoice',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text('Create Now'),
              )
            ]),
          ),
          ListTile(
            trailing: Icon(Icons.download_for_offline_outlined),
            title: Text(
              'Latest activity',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            //constraints: ,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              //style: ListTileStyle,
              //horizontalTitleGap: 80,
              leading: Container(
                margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black12,
                ),
                child: IconButton(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  iconSize: 20,
                  splashRadius: 20,
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 35,
                    color: Colors.red,
                  ),
                ),
              ),
              title: Center(
                child: Column(
                  children: [
                    Text(
                      'Patrice Videgnon',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Developper Flutter',
                      style: TextStyle(color: Colors.black45, fontSize: 18),
                    ),
                  ],
                ),
              ),
              trailing: Column(
                children: [
                  Text('Payer'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '6000fcfa',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            //constraints: ,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              //style: ListTileStyle,
              //horizontalTitleGap: 80,
              leading: Container(
                margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black12,
                ),
                child: IconButton(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  iconSize: 20,
                  splashRadius: 20,
                  onPressed: () {},
                  icon: Icon(
                    Icons.woman,
                    size: 35,
                    color: Colors.red,
                  ),
                ),
              ),
              title: Center(
                child: Column(
                  children: [
                    Text(
                      'Charlotte Tomenou',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Developper Symfony',
                      style: TextStyle(color: Colors.black45, fontSize: 18),
                    ),
                  ],
                ),
              ),
              trailing: Column(
                children: [
                  Text('Payer'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '8000fcfa',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}

/*
Container(
padding: EdgeInsets.all(5),
height: 50,
width: 50,
decoration: BoxDecoration( ,
borderRadius: BorderRadius.circular(12),
color: Colors.black12,
color: Colors.red,
),
child: IconButton(
onPressed: () {},
icon: Icon(
Icons.person,
),
color: Colors.red,
iconSize: 20,
splashRadius: 20,
splashColor: Colors.black45,
),
),*/
