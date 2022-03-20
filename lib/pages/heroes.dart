import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_started/modules/bottom_navbar.dart';
import 'package:get_started/modules/search_bar.dart';
import 'package:get_started/modules/ngo_box.dart';
import 'package:get_started/pages/donor_page.dart';

class Heroes extends StatefulWidget {
  const Heroes({Key? key}) : super(key: key);

  @override
  _HeroesState createState() => _HeroesState();
}

class _HeroesState extends State<Heroes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 100),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 0),
          child: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomNav()));
                    },
                    icon: Icon(
                      Icons.cancel,
                      size: 40,
                      color: Colors.teal,
                    )),
              )
            ],
            title: Text(
              'Our Heroes',
              style: TextStyle(fontSize: 40, color: Colors.teal),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(child: SearchBar()),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    NgoBox(
                        Ngoimage: 'jungle.png',
                        daysLeft: 2,
                        NeedLeft: 50,
                        compaingTitle: 'Donate for Animals',
                        percentage: .9),
                    SizedBox(
                      height: 15,
                    ),
                    NgoBox(
                        Ngoimage: 'jungle.png',
                        daysLeft: 2,
                        NeedLeft: 50,
                        compaingTitle: 'Donate for Animals',
                        percentage: .9),
                    SizedBox(
                      height: 15,
                    ),
                    NgoBox(
                        Ngoimage: 'jungle.png',
                        daysLeft: 2,
                        NeedLeft: 50,
                        compaingTitle: 'Donate for Animals',
                        percentage: .9),
                    SizedBox(
                      height: 15,
                    ),
                    NgoBox(
                        Ngoimage: 'jungle.png',
                        daysLeft: 2,
                        NeedLeft: 50,
                        compaingTitle: 'Donate for Animals',
                        percentage: .9),
                    SizedBox(
                      height: 15,
                    ),
                    NgoBox(
                        Ngoimage: 'jungle.png',
                        daysLeft: 2,
                        NeedLeft: 50,
                        compaingTitle: 'Donate for Animals',
                        percentage: .9),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
