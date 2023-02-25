import 'package:flutter/material.dart';
import 'package:flutter_bak/screens/home_page.dart';
import 'package:flutter_bak/screens/nav_bar.dart';
import 'package:flutter_bak/theme/colors/light_colors.dart';
import 'package:flutter_bak/widgets/task_container.dart';
import 'package:flutter_bak/widgets/back_button.dart';

import '../widgets/active_project_card.dart';

class Summary extends StatelessWidget {
  final int previousSumA;
  final int previousSumB;
  final int previousSumC;

  const Summary(
      {super.key,
      required this.previousSumA,
      required this.previousSumB,
      required this.previousSumC});

  Text subheading(String title) {
    return Text(
      title,
      style: TextStyle(
          color: LightColors.kDarkBlue,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            20,
            20,
            20,
            0,
          ),
          child: Column(
            children: <Widget>[
              MyBackButton(),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Summary',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Based on your responses, here are your \n results:',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
              Container(
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 5.0),
                    Row(
                      children: <Widget>[
                        ActiveProjectsCard(
                          cardColor: LightColors.kGreen,
                          loadingPercent: previousSumA / 54.0,
                          title: 'Emotional Exhaustion',
                          subtitle: category_ee(previousSumA),
                        ),
                        SizedBox(width: 20.0),
                        ActiveProjectsCard(
                          loadingPercent: previousSumB / 48.0,
                          title: 'Personal Achievement',
                          subtitle: category_pa(previousSumB),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 70.0),
                        ActiveProjectsCard(
                          loadingPercent: previousSumC / 30.0,
                          title: 'Depersonalisation',
                          subtitle: category_dp(previousSumC),
                        ),
                        SizedBox(width: 70.0),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    Center(
                      child: Container(
                        height: 40.0,
                        width: 120,
                        decoration: BoxDecoration(
                          color: LightColors.kBlue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NavBar(),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              'Done',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String category_ee(int i) {
    if (i <= 18) {
      return "Low";
    } else if (i <= 26) {
      return "Moderate";
    } else {
      return "High";
    }
  }

  String category_dp(int i) {
    print(i);
    if (i <= 5) {
      return "Low";
    } else if (i <= 9) {
      return "Moderate";
    } else {
      return "High";
    }
  }

  String category_pa(int i) {
    if (i >= 33) {
      return "High";
    } else if (i >= 39) {
      return "Moderate";
    } else {
      return "Low";
    }
  }
}
