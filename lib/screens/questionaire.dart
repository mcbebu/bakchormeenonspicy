import 'package:flutter/material.dart';
import 'package:flutter_bak/theme/colors/light_colors.dart';
import 'package:flutter_bak/widgets/task_container.dart';
import 'package:flutter_bak/widgets/back_button.dart';

import 'QuestionnairePage_a.dart';

class Questionaire extends StatelessWidget {
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
                children: <Widget>[
                  Text(
                    'Check-In',
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
                    'Answer this short questions based \non how you feel after your last check-in.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              TaskContainer(
                title:
                    'Based on the scoring below, indicate within the questionnaire how you felt during the spring.',
                subtitle:
                    'The details of the questionare would be kept strictly confidential between you and your supervisor.\n\n 0-Never \n 1-At least Once \n 2-Two to three times \n 3-Four to five times \n 4-Six to seven times \n 5-More than seven times \n 6-Everyday \n\n *This questionaire does not replace nor is it intended to replace a diagnosis by mental health professionals',
                boxColor: LightColors.kLightYellow2,
              ),
              SizedBox(height: 20.0),
              Container(
                height: 40.0,
                width: 120,
                decoration: BoxDecoration(
                  color: LightColors.kGreen,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionnairePage_a(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Begin',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
