import 'package:flutter/material.dart';
import 'package:public_transport_app/constants.dart';
import 'package:public_transport_app/screens/ticket_details.dart';
import 'package:public_transport_app/widgets/from_to_card.dart';
import 'package:public_transport_app/widgets/schedule_box.dart';
import 'package:public_transport_app/widgets/ticket_info.dart';
import '../schedule.dart';

class TrnsprtDetails extends StatelessWidget {
  final String title;
  final String image;
  final String location;
  final String destination;
  final List schedules;

  const TrnsprtDetails({
    Key? key,
    required this.title,
    required this.image,
    required this.location,
    required this.destination,
    required this.schedules,
  }) : super(key: key);

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
              title,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Myriad Pro',
                fontWeight: FontWeight.w700,
                fontSize: 36.0,
              ),
            )),
          ),
          SizedBox(height: 10.0),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(height: 30.0),
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
                  FromToCard(from: location, to: destination),
                  SizedBox(height: 25),
                  Text(
                    'Choose Schedule',
                    style: TextStyle(
                      fontFamily: 'MyriadPro',
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          for (Schedule schedule in schedules) ...[
                            ScheduleBox(
                              fromTime: schedule.fromTime,
                              toTime: schedule.toTime,
                              location: schedule.location,
                              price: schedule.price,
                              pressSelect: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return TicketDetails(
                                    ticketInfo: TicketInfo(
                                      location: location,
                                      destination: destination,
                                      fromTime: schedule.fromTime,
                                      toTime: schedule.toTime,
                                       price: schedule.price,
                                      QrCode: 'assets/images/qr.png',
                                    ),
                                  );
                                }));
                              },
                            ),
                          ]
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
