import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImpactBox extends StatefulWidget {
  const ImpactBox({Key? key,
  required this.helpCause,
    required this.helpNo,}) : super(key: key);

  final String helpCause;
  final int helpNo;
  @override
  _ImpactBoxState createState() => _ImpactBoxState();
}

class _ImpactBoxState extends State<ImpactBox> {
  @override

  iconSet(){
    if(widget.helpCause=='Family fed'){
      return  Icon(Icons.fastfood);
    }
    else if(widget.helpCause== 'animal fed'){
      return  Icon(Icons.star);
    }
    else if(widget.helpCause== 'education'){
      return  Icon(Icons.book);
    }
    else
      {
        return Icon(Icons.clean_hands);
      }
  }




  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 20,),
          iconSet(),
          SizedBox(width: 20,),
          Column(
            children: [
              Text(widget.helpCause,style: TextStyle(
                fontWeight: FontWeight.normal,decoration: TextDecoration.none,
                color: Colors.black38,
                fontSize: 20,
              ),),
              Text(widget.helpNo.toString(),style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.normal,decoration: TextDecoration.none,color: Colors.black38,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
