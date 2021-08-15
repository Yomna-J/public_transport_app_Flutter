import 'package:flutter/material.dart';
import 'package:public_transport_app/constants.dart';

class ScheduleBox extends StatelessWidget {
  final String fromTime;
  final String toTime;
  final String location;
  final double price;

  const ScheduleBox({
    Key? key,
    required this.fromTime,
    required this.toTime,
    required this.location,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Column(
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
                    Image.asset('assets/icons/arrow.png', width: 40),
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
                SizedBox(height: 13),
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
                SizedBox(height: 13),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 3),
                        height: 1.0,
                        color: kDarkGray,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: Column(
              children: [
                Text(
                  '\$ $price',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  //TODO: Extract as a rounded button
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    width: 75,
                    decoration: BoxDecoration(
                      color: kMoonStones,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('Select',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        )),
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
