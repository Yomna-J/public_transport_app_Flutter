import 'package:flutter/material.dart';
import 'package:public_transport_app/constants.dart';

class TicketInfo extends StatelessWidget {
  final String location;
  final String destination;
  final String fromTime;
  final String toTime;
  final double price;
  final String QrCode;

  const TicketInfo({
    Key? key,
    required this.location,
    required this.destination,
    required this.fromTime,
    required this.toTime,
    required this.price,
    required this.QrCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
      height: 290,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
            height: 160,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 18,
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
                                text: location,
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
                              text: destination,
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
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            height: 130,
            child: Row(
              children: [
                Container(
                  width: 215,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/icons/clock.png', width: 15),
                          SizedBox(width: 15),
                          Text(
                            fromTime,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 15),
                          Image.asset('assets/icons/train.png', width: 12),
                          SizedBox(width: 15),
                          Text(
                            toTime,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/icons/location.png', width: 15),
                          SizedBox(width: 15),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/icons/price.png', width: 15),
                          SizedBox(width: 15),
                          Text(
                            '\$ $price',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: 100,
                  child: Image.asset(QrCode, height: 100),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
