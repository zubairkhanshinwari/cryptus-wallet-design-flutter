import 'package:flutter/material.dart';
import 'three_item_row.dart';
class TopItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 24),
              height: 270,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                color: Color(0xFF3F3772),
              ),
              child: Column(
                  children: <Widget>[
                    TopThreeItem(Colors.white),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.only(right: 170),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Total Balance',style: TextStyle(color: Colors.white70),),
                            Text('\$16,372.30',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                            Text('+17.52(4.24%) 24 hr',style: TextStyle(color:Colors.lightGreen),),
                          ]),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Row(
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white30)
                              ),
                              child: Icon(Icons.directions,color: Colors.white70,size: 50,)
                          ),
                          SizedBox(width: 20,),
                          Container(
                            margin: EdgeInsets.only(right: 170),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('Ethereum',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  Text('\$94.89',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 20),),
                                  Text('0.8149 ETH',style: TextStyle(color:Colors.white30),),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ])),
          Positioned(
            child: Container(
                margin: EdgeInsets.only(top: 185,left:250),
                child:   Image.asset('images/gir.png',height: 140,width: 140,)),
          ),
        ]);
  }
}
