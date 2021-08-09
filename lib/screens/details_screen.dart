import 'package:flutter/material.dart';
import 'package:public_transport_app/constants.dart';
import 'package:public_transport_app/widgets/from_to_card.dart';
import 'package:public_transport_app/widgets/schedule.dart';

class MRTDetailsScreen extends StatelessWidget {
  const MRTDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMoonStones,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 50.0),
            child: Center(
                child: Text(
              'MRT',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Myriad Pro',
                fontWeight: FontWeight.w700,
                fontSize: 36.0,
              ),
            )),
          ),
          SizedBox(height: 20.0),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/mrt.png'),
              ),
            ),
          ),
          SizedBox(height: 40.0),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: .8,
                    blurRadius: 4,
                    offset: Offset(1, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FromToCard(
                      from: 'Lorem MRT Station', to: 'Dolor MRT Station'),
                  SizedBox(height: 25),
                  Text(
                    'Choose Schedule',
                    style: TextStyle(
                      fontFamily: 'MyriadPro',
                      fontWeight: FontWeight.w500,
                      fontSize: 26,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Schedule(
                            fromTime: '10:00',
                            toTime: '10:30',
                            location: 'Lorem MRT Station',
                            price: 5.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 3),
                            height: 1.0,
                            width: double.infinity,
                            color: kDarkGray,
                          ),
                          Schedule(
                            fromTime: '11:05',
                            toTime: '11:45',
                            location: 'Lorem MRT Station',
                            price: 5.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 3),
                            height: 1.0,
                            width: double.infinity,
                            color: kDarkGray,
                          ),
                          Schedule(
                            fromTime: '11:25',
                            toTime: '12:30',
                            location: 'Lorem MRT Station',
                            price: 3.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
