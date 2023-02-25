import 'package:flutter/material.dart';

import '../theme/colors/light_colors.dart';

class RedeemNode extends StatelessWidget {
  final String imageURL;
  final String voucherName;
  final int cost;
  final String subtitle;

  RedeemNode({
    required this.imageURL,
    required this.voucherName,
    required this.cost,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(1.00),
        child: Card(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                child: ListTile(
                    leading: Image.asset(imageURL),
                    title: Text(voucherName),
                    subtitle: Text(subtitle),
                    trailing: Text("-$cost points",
                        style: TextStyle(fontSize: 14.0))))));
  }
}
