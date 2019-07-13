import 'package:flutter/material.dart';

class BasicView extends StatelessWidget{

  final styleTitle = TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 20.0,color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Canada Lake campgroud',style: styleTitle,),
                      SizedBox(height: 7.0,),
                      Text('Canada , Canada',style: styleSubTitle,),
                    ],
                  ),
                ),
                Icon(Icons.star,color: Colors.red,),
                Text('41',style: TextStyle(fontSize: 20.0),),
              ],
            ),
          )
        ],
      ),
    );
  }

}

