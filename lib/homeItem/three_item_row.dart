import 'package:flutter/material.dart';

class TopThreeItem extends StatelessWidget {
    Color color;

    TopThreeItem(this.color);

    @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: color)
              ),
              child: Icon(Icons.drag_handle,color: color,size: 50,)
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Text('CRYPTUS',style: TextStyle(fontWeight: FontWeight.bold,color: color),),
                Text('5 APRIL',style: TextStyle(color: color),),
              ],),
          ),
          Container(
              width: 50.0,
              height: 50.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image:  AssetImage(
                          "images/pro.jpg")
                  ))),
        ],),
    );
  }
}
