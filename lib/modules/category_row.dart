import 'package:flutter/material.dart';

class CategoryRow extends StatefulWidget {
  const CategoryRow({Key? key,
  required this.imageUrl,required this.category}) : super(key: key);

  final String imageUrl;
  final String category;
  @override
  _CategoryRowState createState() => _CategoryRowState();
}

class _CategoryRowState extends State<CategoryRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(.2),
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(widget.imageUrl,fit: BoxFit.contain,height: 50,width: 80,),
            Text(widget.category,textAlign: TextAlign.center,style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),),
          ],
        )

    );
  }
}
