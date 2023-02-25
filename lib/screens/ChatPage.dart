import 'package:flutter/material.dart';

import '../theme/colors/light_colors.dart';
import '../widgets/back_button.dart';
import 'QuestionnairePage_b.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPage createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  List<int> _selectedValues = List<int>.filled(9, -1);
  int _calculateSum() {
    int sum = _selectedValues.reduce((value, element) => value + element);
    return sum;
    // print('Sum of answers: $sum');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            20,
            60,
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
                    'TEAM BEDOK',
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
                    'Bedok best team \n Boss Shaun',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                  ),
                ],
              ),

              Container (
                width: 200.0,
                height: 100.0,
                margin: EdgeInsets.all(16.0),
                color: Colors.red,
                child: Align(
                  child: Text(
                    'Hi Aidan, good job today! How were your rides today?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Container (
                width: 200.0,
                height: 100.0,
                margin: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Align(
                  child: Text(
                    'Everything went well boss. Good weather and no traffic jam really help me end my day earlier today.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Container (
                width: 200.0,
                height: 100.0,
                margin: EdgeInsets.all(16.0),
                color: Colors.red,
                child: Align(
                  child: Text(
                    'That\'s good to hear! Have a good rest today. See you again tomorrow.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Container (
                width: 200.0,
                height: 100.0,
                margin: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Align(
                  child: Text(
                    'Thanks boss, see you tomorrow!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type a message',
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              //
              // SizedBox(height: 60.0),
              // color: Colors.blue,
              // Text(
              //   function1(),
              //   textAlign: TextAlign.left,
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontWeight: FontWeight.w700,
              //     fontSize: 16,
              //   ),
              // )
              //
              // SizedBox(height: 60.0),
              // color: Colors.blue,
              // Text(
              //   function2(),
              //   textAlign: TextAlign.right,
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontWeight: FontWeight.w700,
              //     fontSize: 16,
              //   ),
              // ),


            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String label) {
    return Container(
      width: 100, // set the width here
      color: Colors.blue,
      child: ElevatedButton(
        onPressed: () {

        },
        child: Text(label),
      ),
    );
  }
}

String function1() {
  return ("Good work today MrTan! Hope everything went well for you today. Did any problems happen during your rides today?");
}

String function2() {
  return ("Hey Boss! Everything today went well. Nice weather and traffic, so all items were promptly delivered.");
}

