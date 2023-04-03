import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getBlogPost(
    String imagename, String title, String buyprice, String sellprice) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(7.5),
        child: Image(
          image: AssetImage('images/$imagename'),
        ),
      ),
      SizedBox(height: 10),
      Text(
        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      SizedBox(height: 20.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$sellprice',
            style: TextStyle(color: Colors.red[600]),
          ),
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Icons.price_check,
            color: Colors.red[400],
            size: 25,
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            '$buyprice',
            style: TextStyle(color: Colors.green[600]),
          ),
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Icons.sell,
            size: 20,
            color: Colors.tealAccent[400],
          )
        ],
      ),
      Container(
        width: 265,
        child: Divider(
          color: Colors.black,
          thickness: 1.65,
        ),
      ),
    ],
  );
}
