import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowItem extends StatelessWidget {
   String currency;
   String amount;
   String path;
   IconData icon;
  final  Color color;

  RowItem({
    this.currency,this.path,
    this.amount,
    this.icon = FontAwesomeIcons.fonticons,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12),color: Colors.white
              ),
              child: Icon(icon,color: color,size: 50,)
          ),
          SizedBox(width: 20,),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(currency,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Text(amount,style: TextStyle(color: (color),fontSize: 20,fontWeight: FontWeight.bold),),
                ]),
          ),
          Container(
              margin: EdgeInsets.only(left:70),
              child: Image.asset(path,width: 90,height: 60,)),
        ],
      ),
    );
  }
}
