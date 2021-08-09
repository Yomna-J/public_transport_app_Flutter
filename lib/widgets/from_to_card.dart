import 'package:flutter/material.dart';

import '../constants.dart';

class FromToCard extends StatelessWidget {
  final String from;
  final String to;

  const FromToCard({
    Key? key,
    required this.from,
    required this.to,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 0.6,
            blurRadius: 6,
            offset: Offset(5, 6),
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 18,
            child: Container(
              // padding: EdgeInsets.only(top: 15),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/icons/from.png', width: 20),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      height: 40,
                      child: VerticalDivider(color: Colors.black)),
                  Image.asset('assets/icons/to.png', width: 20),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: 'From\n',
                          style: TextStyle(fontWeight: FontWeight.w200),
                        ),
                        TextSpan(
                          text: from,
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  padding: EdgeInsets.only(left: 3),
                  height: 1.5,
                  width: 240,
                  color: kDarkGray,
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: 'To\n',
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                      TextSpan(
                        text: to,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
