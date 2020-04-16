import 'package:cryptuswallet/frontitem/row_item.dart';

import '../homeItem/three_item_row.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red,
     body: Container(
       margin: EdgeInsets.only(top: 24),
       height: MediaQuery.of(context).size.height * 1.0,
       width: MediaQuery.of(context).size.width * 1.0,
       decoration: BoxDecoration(
           borderRadius: BorderRadius.only(
               topLeft: Radius.circular(30),
               topRight: Radius.circular(30)),
                color: Colors.white,
       ),
       child: Column(children: <Widget>[
         TopThreeItem(Colors.black),
         SizedBox(height: 20),
             Stack(children: <Widget>[
               Container(
                 height: 210,
                 width: MediaQuery.of(context).size.width * 1.0,
                 color: Color(0xFFDCDDF7),
               ),
               Positioned(
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(top: 40),
                       height: 170,
                       width: 220,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(30),
                             topRight: Radius.circular(30)),
                              color: Color(0xFFBCBCDB),
                       ),
                     ),
                   ],
                 )),
                 Positioned(child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(top: 70),
                       height: 140,
                       width: 270,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(30),
                             topRight: Radius.circular(30)),
                           color: Color(0xFF2E1338),
                       ),
                       child: Column(children: <Widget>[
                        Row(children: <Widget>[
                          SizedBox(width: 5),
                          Icon(Icons.refresh, color: Colors.white,),
                          SizedBox(width: 5),
                          Text('PIQO\n WALLET',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          SizedBox(width: 15),
                          Text('Last Update 1 minute ago',style: TextStyle(color: Colors.white70),),
                        ]),
                         SizedBox(height: 40),
                         Row(

                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                           Column(children: <Widget>[
                             Text('\$14,386.00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                             Text('+17.52(4.24%) 24 hr',style: TextStyle(color: Color(0XFF434C52)),),
                           ]),
                               Container(
                                 width: 60,
                                 height: 60,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(20),
                                       border: Border.all(color:Colors.white70)
                                   ),
                                   child: Icon(FontAwesomeIcons.signal,color: Colors.white,size: 30)),
                         ]),
                       ]),
                     )],
                 )),
             ]),
           SizedBox(height: 10),
         Stack(
           children: <Widget>[
             Center(
               child: Container(
                 height: 70,
                 width: 300,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xFFDAD5E6))),
             ),
             Container(
               margin: EdgeInsets.only(left: 40,top: 5),
               child: Row(
                   children: <Widget>[
                 Container(
                     height: 60,
                     width: 140,
                     decoration: BoxDecoration(borderRadius:
                     BorderRadius.only(topLeft: Radius.circular(10),
                         bottomLeft: Radius.circular(10)),
                         color: Color(0xFF3F3772),
                       boxShadow: [
                         BoxShadow(
                           color: Color(0xFF3F3772),
                           blurRadius: 10.0,
                         )]),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: <Widget>[
                        Text('Buy now',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_drop_up,color: Colors.white,size: 30,),
                     ]),
                 ),
                 Container(
                     height: 60,
                     width: 140,
                     decoration: BoxDecoration(borderRadius:
                     BorderRadius.only(topRight: Radius.circular(10),
                         bottomRight: Radius.circular(10)),
                         color: Color(0xFF8E869A),
                       boxShadow: [
                         BoxShadow(
                         color: Color(0xFF8E869A),
                           blurRadius: 10.0,
                         )]),
                   child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: <Widget>[
                         Icon(Icons.arrow_drop_down,color: Colors.white,size: 30,),
                         Text('Sell now',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                       ]),
                 )]),
             )]),
           SizedBox(height: 10),
           Container(
             margin: EdgeInsets.only(left: 10,right: 30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
               Text('Transcation',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)),
               Text('See all',style: TextStyle(color: Colors.black38,fontSize: 15),)
             ]),
           ),
         SizedBox(height: 10),
         Column(children: <Widget>[
             FrontRowItem(
               text: '+ \$316.21',
               currency: 'Buy ',
               amount: "April 3,2020",
               icon:  FontAwesomeIcons.bitcoin,
               color:  Colors.orange,
               textColor: Colors.blue,
             ),
             SizedBox(height: 10),
             FrontRowItem(
               text: '- \$94.89',
               currency: 'Sell ',
               amount: "April 3,2020",
               icon:  FontAwesomeIcons.diagnoses,
               color:  Colors.blueAccent,
               textColor: Colors.blueGrey,
             ),
           ]),
       ]),
     ),
    );
  }
}

