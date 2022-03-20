import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_started/modules/bottom_navbar.dart';
import 'package:get_started/modules/impact_box.dart';
import 'package:get_started/pages/heroes.dart';
import 'package:get_started/modules/donar_box.dart';

class StartDonation extends StatefulWidget {
  const StartDonation({Key? key}) : super(key: key);

  @override
  _StartDonationState createState() => _StartDonationState();
}

class _StartDonationState extends State<StartDonation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Donations',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Expanded(
            child: Center(
                child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    donarBox(),
                    SizedBox(
                      height: 10,
                    ),
                    donarBox(),
                    SizedBox(
                      height: 10,
                    ),
                    donarBox(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * .85,
              height: 60,
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12.withOpacity(.2)),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(4, 4),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 30,
                  ),
                  Text(
                    'New Donation',
                    style: const TextStyle(
                      fontSize: 24,
                      decoration: TextDecoration.none,
                      color: Colors.black38,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Impact you Make',
              style: const TextStyle(
                fontSize: 24,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Container(
              height: MediaQuery.of(context).size.height * .26,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
                color: Colors.white60,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Stack(
                children: [
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        'gift.png',
                        width: 200,
                        height: 200,
                      )),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        ImpactBox(
                          helpCause: 'Family fed',
                          helpNo: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ImpactBox(
                          helpCause: 'animal fed',
                          helpNo: 5,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ImpactBox(
                          helpCause: 'education',
                          helpNo: 3,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ImpactBox(
                          helpCause: 'Family fed',
                          helpNo: 2,
                        ),
                      ],
                    ),
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
