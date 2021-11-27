import 'package:flutter/material.dart';
import 'package:public_transport_app/constants.dart';
import 'package:public_transport_app/widgets/ticket_info.dart';

class TicketDetails extends StatelessWidget {

   final TicketInfo ticketInfo;
  const TicketDetails({Key? key, required this.ticketInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kMoonStones,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 50.0),
            child: Center(
                child: Text(
              'Ticket',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Myriad Pro',
                fontWeight: FontWeight.w700,
                fontSize: 36.0,
              ),
            )),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 155,
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 28, right: 28, top: 30),
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
                        SizedBox(height: 140),
                        Text(
                          'Payment',
                          style: TextStyle(
                            fontFamily: 'MyriadPro',
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Enter Amount',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 12),
                        TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            isDense: true,
                            prefixText: '\$  ',
                            prefixStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                            contentPadding: EdgeInsets.all(10),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: kGray,
                            filled: true,
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(2),
                                width: 145,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: kMoonStones,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text('Credit Card',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                            ),
                            Text(
                              'Balance: \$ 85',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 3),
                                height: 1.3,
                                color: kDarkGray,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(2),
                                width: 145,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: kGray,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text('E-Wallet',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                            ),
                            Text(
                              'Balance: \$ 18',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(2),
                                width: 310,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: kMoonStones,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text('Buy Ticket',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: ticketInfo,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
