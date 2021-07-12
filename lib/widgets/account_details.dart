import 'package:flutter/material.dart';

class AccountDetail extends StatelessWidget {
  final String title;
  final String value;

  const AccountDetail({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 10),
        Text(
          value,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
