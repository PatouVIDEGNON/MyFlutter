import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('My Personal Journal');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: customSearchBar,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.cancel);
                  customSearchBar = const ListTile(
                      leading: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                  ),
                title: TextField(
                decoration: InputDecoration(
                hintText: 'Type in journal name...',
                hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontStyle: FontStyle.italic,
                ),   border: InputBorder.none,
                ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                  );
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text('My Personal Journal');
                }
              });
            },
            icon: customIcon,
          )
        ],
        centerTitle: true,
      ),
    );
  }
}


