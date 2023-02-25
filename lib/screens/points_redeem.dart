import 'package:flutter/material.dart';
import 'package:flutter_bak/theme/colors/light_colors.dart';

import 'package:flutter_bak/widgets/top_container.dart';

import '../widgets/redeem.dart';
import '../widgets/voucher.dart';

class VoucherObject {
  final String imageURL;
  final String voucherName;
  final int cost;
  final String subtitle;

  VoucherObject(
      {required this.imageURL,
      required this.voucherName,
      required this.cost,
      required this.subtitle});
}

class RedeemObject extends VoucherObject {
  RedeemObject({
    required String imageURL,
    required String voucherName,
    required int cost,
    required String subtitle,
  }) : super(
          imageURL: imageURL,
          voucherName: voucherName,
          cost: cost,
          subtitle: subtitle,
        );
}

class PointsRedeemPage extends StatefulWidget {
  @override
  _PointsRedeemPage createState() => _PointsRedeemPage();
}

class _PointsRedeemPage extends State<PointsRedeemPage>
    with SingleTickerProviderStateMixin {
  int points = 2500;
  late TabController _tabController;

  List<VoucherObject> voucherList = [
    VoucherObject(
        imageURL: "assets/images/fairprice.png",
        voucherName: "Fairprice",
        subtitle: "\$10 voucher",
        cost: 200),
    VoucherObject(
        imageURL: "assets/images/subway.jpg",
        voucherName: "Subway",
        subtitle: "\$20 voucher",
        cost: 500),
    VoucherObject(
        imageURL: "assets/images/zara.jpg",
        voucherName: "Zara",
        subtitle: "\$50 voucher",
        cost: 1000)
  ];

  List<RedeemObject> redeemList = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _decreasePoints(int count) {
    setState(() {
      points -= count;
    });
  }

  void _addRedeemHistory(
      String imageURL, String voucherName, int cost, String subtitle) {
    redeemList.add(RedeemObject(
        imageURL: imageURL,
        voucherName: voucherName,
        cost: cost,
        subtitle: subtitle));
    _decreasePoints(cost);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: LightColors.kLightYellow,
        body: SafeArea(
            child: Column(children: <Widget>[
          TopContainer(
              width: width,
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // My Points Text + Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('My Points:',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w900)),
                        ElevatedButton(
                            onPressed: () {
                              // implement route to quizes tab
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(35, 35),
                                shape: const CircleBorder(),
                                backgroundColor: LightColors.kLightYellow),
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset('assets/images/ninja_points.png',
                            width: 50, height: 50),
                        SizedBox(width: 20),
                        Text("$points",
                            style: TextStyle(
                                fontSize: 34.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w900))
                      ],
                    ),
                    // NinjaPoint + Points
                    TabBar(
                        indicatorColor: Colors.white,
                        labelColor: Colors.black,
                        tabs: [
                          Tab(text: "Offers"),
                          Tab(text: "Redeem History"),
                        ],
                        controller: _tabController),
                  ])),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount: voucherList.length,
                itemBuilder: (context, idx) {
                  return (VoucherNode(
                      imageURL: voucherList[idx].imageURL,
                      cost: voucherList[idx].cost,
                      subtitle: voucherList[idx].subtitle,
                      voucherName: voucherList[idx].voucherName,
                      onButtonPressed: () => _addRedeemHistory(
                          voucherList[idx].imageURL,
                          voucherList[idx].voucherName,
                          voucherList[idx].cost,
                          voucherList[idx].subtitle)));
                },
              ),
              ListView.builder(
                  itemCount: redeemList.length,
                  itemBuilder: (context, idx) {
                    return RedeemNode(
                      imageURL: redeemList[idx].imageURL,
                      cost: redeemList[idx].cost,
                      subtitle: redeemList[idx].subtitle,
                      voucherName: redeemList[idx].voucherName,
                    );
                  })
            ],
          ))
        ])));
  }
}
