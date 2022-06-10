import 'package:flutter/material.dart';

class CuteInterface extends StatefulWidget {
  const CuteInterface({Key? key}) : super(key: key);

  @override
  State<CuteInterface> createState() => _CuteInterfaceState();
}

class _CuteInterfaceState extends State<CuteInterface> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('My Personal Journal');

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
        title: ListTile(
          title: Center(
            child: Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          trailing: Container(
            decoration: BoxDecoration(),
            child: RawMaterialButton(
              onPressed: () {},
              shape: CircleBorder(),
              fillColor: Colors.white,
              child: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(50),
            child: ListTile(
              title: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 3, color: Colors.black26),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
          /*GridView.builder(

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisSpacing: 4),
              itemBuilder: (BuildContext context, int index)
          )*/
        ],
      ),
    );
  }
}

/*
Le body : listview.children attends ceci:
Column(
children: [
IconButton(
onPressed: () {
setState(() {
if (customIcon.icon == Icons.search) {
customIcon = const Icon(Icons.cancel);
customSearchbar = const ListTile(
leading: Icon(
Icons.search,
color: Colors.teal,
size: 15,
),
title: TextField(
decoration: InputDecoration(
hintText: 'Taper une recherche',
hintStyle: TextStyle(
color: Colors.teal,
fontStyle: FontStyle.italic,
),
),
),
);
} else {
customIcon = Icon(Icons.search);
customSearchbar = const Text('Mes articles');
}
});
},
icon: customIcon,
),
],
),*/
