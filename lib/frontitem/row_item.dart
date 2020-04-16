import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class FrontRowItem extends StatelessWidget {
  String currency;
  String amount;
  String text;
  IconData icon;
  final  Color color;
  final  Color textColor;

  FrontRowItem({
    this.textColor,
    this.text,
    this.currency,
    this.amount,
    this.icon = FontAwesomeIcons.fonticons,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 30),
      child: Row(
        children: <Widget>[
          Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12),color: Colors.white
              ),
              child: Icon(icon,color: color,size: 35,)
          ),
          SizedBox(width: 10,),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(currency,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                  Text(amount,style: TextStyle(color: (textColor),fontSize: 10),),
                ]),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 120),
                child: Text(text, style: TextStyle(color: (textColor),fontWeight: FontWeight.bold),)),
          ),
        ],
      ),
    );
  }
}
