import 'package:flutter/material.dart';

class NgoBox extends StatefulWidget {
  const NgoBox({Key? key,
  required this.Ngoimage,
    required this.daysLeft,
    required this.NeedLeft,
  required this.compaingTitle,
  required this.percentage,}) : super(key: key);

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
      height: 140,
      padding: const EdgeInsets.all(7),
      color: Colors.black12,
      child: Row(
        children: [

          Image.asset(widget.Ngoimage,),
          const SizedBox(width: 60,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.compaingTitle,style: const TextStyle(
                fontSize: 24,
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 const Icon(Icons.watch_later_outlined),
                  const SizedBox(width: 10,),
                  Text(widget.daysLeft.toString()+' Days left'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.monetization_on_outlined),
                  const SizedBox(width: 10,),
                  Text(widget.NeedLeft.toString()+' Need left'),
                ],
              ),

              Row(
                children: [
                    Container(
                    height: 5,width: 170,
                    child:const LinearProgressIndicator(
                      value: .5,
                      backgroundColor: Colors.black12,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Text(widget.percentage.toString()+'%'),
                ],
              )


            ],
          )
        ],
      ),
    );
  }
}
