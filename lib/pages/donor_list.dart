import 'package:flutter/material.dart';
import 'package:get_started/modules/bottom_navbar.dart';
import 'package:get_started/modules/donar_box.dart';
import 'package:get_started/modules/search_bar.dart';
import 'package:get_started/modules/ngo_box.dart';
import 'package:get_started/pages/heroes.dart';

class DonarList extends StatefulWidget {
  const DonarList({Key? key}) : super(key: key);

  @override
  _DonarListState createState() => _DonarListState();
}

class _DonarListState extends State<DonarList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Image.asset(
                  'donar.png',
                  width: 190,
                  height: 190,
                )),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Donar \nList',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.teal,
                            fontSize: 35,
                          ),
                        ),
                        Icon(
                          Icons.cancel,
                          color: Colors.black38,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SearchBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
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
                      donarBox(),
                      SizedBox(
                        height: 15,
                      ),
                      donarBox(),
                      SizedBox(
                        height: 15,
                      ),
                      donarBox(),
                      SizedBox(
                        height: 15,
                      ),
                      donarBox(),
                      SizedBox(
                        height: 15,
                      ),
                      donarBox(),
                    ],
                  ),
                ),
              ),
            ),
            //BottomNav(),
          ],
        ),
      ),
    );
  }
}
