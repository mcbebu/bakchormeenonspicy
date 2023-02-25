import 'package:flutter/material.dart';

import '../theme/colors/light_colors.dart';

class VoucherNode extends StatelessWidget {
  final String imageURL;
  final String voucherName;
  final int cost;
  final String subtitle;
  final VoidCallback onButtonPressed;

  VoucherNode(
      {required this.imageURL,
      required this.voucherName,
      required this.cost,
      required this.subtitle,
      required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.00),
        child: Card(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                child: ListTile(
                    leading: Image.asset(imageURL),
                    title: Text(voucherName),
                    subtitle: Text(subtitle),
                    trailing: IntrinsicWidth(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(100, 100),
                                shape: const CircleBorder(),
                                backgroundColor: LightColors.kLightYellow),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text('Confirm Purchase'),
                                        content: Text(
                                            'Are you sure you want to purchase this voucher for $cost points?'),
                                        actions: [
                                          TextButton(
                                            child: Text('Cancel'),
                                            onPressed: () =>
                                                Navigator.pop(context),
                                          ),
                                          TextButton(
                                            child: Text('Confirm'),
                                            onPressed: () {
                                              onButtonPressed();
                                              Navigator.pop(
                                                  context); // Close the dialog
                                            },
                                          ),
                                        ],
                                      ));
                            },
                            child: Text("-${cost}",
                                style: TextStyle(color: Colors.black))))))));
  }
}
