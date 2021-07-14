import 'package:flutter/material.dart';
import 'package:public_transport_app/constants.dart';
import 'package:public_transport_app/widgets/account_details.dart';
import 'package:public_transport_app/widgets/transport_card.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'OpenSans'),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMoonStones,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Hello,\nJohn Doe',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 35.0,
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: kGray,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Where you will go',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.5,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/icons/search.png',
                                height: 20,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Search',
                                style:
                                    TextStyle(color: kDarkGray, fontSize: 17.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 40,
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.only(top: 90),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 1.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Choose your Transport',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 15),
                            TransportCard(
                              name: 'Bus',
                              image: 'assets/images/bus.png',
                              pressSelect: () {},
                            ),
                            SizedBox(height: 20),
                            TransportCard(
                              name: 'MRT',
                              image: 'assets/images/small_mrt.png',
                              background: kMoonStones,
                              topValue: 30,
                              bottomValue: 0,
                              pressSelect: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                    child: Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 6,
                              offset: Offset(1, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            AccountDetail(
                              title: 'Balance',
                              value: '\$ 18',
                            ),
                            AccountDetail(
                              title: 'Rewards',
                              value: '\$ 10.25',
                            ),
                            AccountDetail(
                              title: 'Total Trips',
                              value: '189',
                            ),
                          ],
                        ),
                      ),
                    ),
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
