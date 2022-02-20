import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Hello',style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.normal,
          ),
          ),
           Image.asset('kids.png',width: 220,height: 220,),
          Stack(
            children: [
              Positioned(
                width: MediaQuery.of(context).size.width,
                top: -40,
                left: -20,

                child: Text('"',style:TextStyle(
                  fontSize: 230,color: Colors.white.withOpacity(.2), decoration: TextDecoration.none,),),
              ),
             const Text('This is all it takes you\n to make hope \npossible',textAlign: TextAlign.center,style:TextStyle(
                fontWeight: FontWeight.normal,fontSize: 35,color: Colors.white, decoration: TextDecoration.none,),)
            ],
          ),
          GestureDetector(
            onTap: (){},
      child: Container(
padding: const EdgeInsets.only(top: 10),

width: 200,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45),
        ),
        child: const Text('Get Started',textAlign: TextAlign.center,style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.normal,
          color: Colors.teal, decoration: TextDecoration.none,
        ),),
      ),
      )
        ],
      ),
    );
  }
}
