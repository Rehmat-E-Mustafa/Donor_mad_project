import 'package:flutter/material.dart';

class donarBox extends StatefulWidget {
  const donarBox({Key? key}) : super(key: key);

  @override
  _donarBoxState createState() => _donarBoxState();
}

class _donarBoxState extends State<donarBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.85,
      height: 100,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
          color: Colors.white,
          border:Border.all(color: Colors.black12.withOpacity(.2)),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(4,4),
            ),
          ]
      ),
      child: Row(
        children: [

          Image.asset('animal.png',),
          const SizedBox(width: 60,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pet Food',style: const TextStyle(
                fontSize: 24,decoration: TextDecoration.none,
color: Colors.black38,
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.monetization_on_rounded),
                  Text('Quantity: 1',style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: Colors.black38
                  ),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
