import 'file:///D:/flutter/cryptus_wallet/lib/homeItem/row_item.dart';
import 'file:///D:/flutter/cryptus_wallet/lib/homeItem/top_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../widgets/bottom_bar.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
                TopItem(),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(right: 150),
                    child: Text('Coins price list',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25))
                ),
          SizedBox(height: 10,),
          RowItem(
            currency: "Bitcoin",
            amount: "\$94.89",
            icon:  FontAwesomeIcons.bitcoin,
            color:  Colors.orange,
            path:  "images/im.png",
          ),
          SizedBox(height: 10,),
          RowItem(
            currency: "Ethereum",
            amount: "\$131.86",
            icon: FontAwesomeIcons.gem,
            color:  Colors.lightBlue,
            path:  "images/jj.png",
          ),
          SizedBox(height: 10,),
          RowItem(
            currency: "Bitcoin cash",
            amount: "\$216.95",
            icon: FontAwesomeIcons.bitcoin,
            color:  Colors.orange,
            path:  "images/im.png",
          )
        ]),
      ),
    );
  }
}
