import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 15,
        borderRadius: BorderRadius.circular(45),
        child: Container(
          width: MediaQuery.of(context).size.width*.7,
          child: TextFormField(

            cursorHeight: 25,
            decoration:  InputDecoration(
              focusColor: Colors.teal,
              suffixIcon: Icon(Icons.search,),
              hintText: "Try 'food' now",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(45),
                borderSide: const BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                  borderSide: const BorderSide(color: Colors.white)
              ),
            ),
          ),
        )
    );
  }
}
