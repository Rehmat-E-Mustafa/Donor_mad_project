import 'package:flutter/material.dart';

class NgoBox extends StatefulWidget {
  const NgoBox({
    Key? key,
    required this.Ngoimage,
    required this.daysLeft,
    required this.NeedLeft,
    required this.compaingTitle,
    required this.percentage,
  }) : super(key: key);

  final String Ngoimage;
  final int daysLeft;
  final String compaingTitle;
  final int NeedLeft;
  final double percentage;
  @override
  _NgoBoxState createState() => _NgoBoxState();
}

class _NgoBoxState extends State<NgoBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 140,
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            widget.Ngoimage,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.compaingTitle,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .05,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.watch_later_outlined),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(widget.daysLeft.toString() + ' Days left'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.monetization_on_outlined),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(widget.NeedLeft.toString() + ' Need left'),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 5,
                    width: MediaQuery.of(context).size.width * .30,
                    child: const LinearProgressIndicator(
                      value: .5,
                      backgroundColor: Colors.black12,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(widget.percentage.toString() + '%'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
