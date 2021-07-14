import 'package:flutter/material.dart';
import 'package:public_transport_app/constants.dart';

class TransportCard extends StatelessWidget {
  final String name;
  final String image;
  final Color background;
  final double topValue;
  final double bottomValue;
  final VoidCallback pressSelect;

  const TransportCard({
    Key? key,
    required this.name,
    required this.image,
    this.background = kLightBlue,
    this.topValue = 15,
    this.bottomValue = 0,
    required this.pressSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
        bottom: 25,
        left: 25,
      ),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 2,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: pressSelect,
              child: Container(
                padding: EdgeInsets.all(2),
                height: 25,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Center(
                    child: Text(
                  'Select',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                )),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: topValue,
            bottom: bottomValue,
            child: Container(
              width: 235,
              child: Image.asset(
                image,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
