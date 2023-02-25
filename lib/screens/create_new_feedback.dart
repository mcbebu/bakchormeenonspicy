import 'package:flutter/material.dart';
import 'package:flutter_bak/screens/ForumDiscussion.dart';
import 'package:flutter_bak/theme/colors/light_colors.dart';
import 'package:flutter_bak/widgets/top_container.dart';
import 'package:flutter_bak/widgets/back_button.dart';
import 'package:flutter_bak/widgets/my_text_field.dart';
import 'package:flutter_bak/screens/home_page.dart';

class CreateNewFeedbackPage extends StatefulWidget {
  @override
  _CreateNewFeedbackPageState createState() => _CreateNewFeedbackPageState();
}

class _CreateNewFeedbackPageState extends State<CreateNewFeedbackPage> {
  final TextEditingController _controller = TextEditingController();

  List<String> _chipLabels = [
    'Something good happened',
    'I am unsatisfied with a certain aspect',
    'Something bad happened'
  ];
  List<bool> _chipSelections = [false, false, false];
  List<Color> _color = [
    LightColors.kGreen,
    LightColors.kDarkYellow,
    LightColors.kRed
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var downwardIcon = Icon(
      Icons.keyboard_arrow_down,
      color: Colors.black54,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              height: 250,
              padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
              width: width,
              child: Column(
                children: <Widget>[
                  MyBackButton(),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Create new feedback',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MyTextField(
                        label: 'Title',
                        controller: _controller,
                      ),
                    ],
                  ))
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  MyTextField(
                    label: 'Description',
                    minLines: 3,
                    maxLines: 3,
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Category',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          children: List<Widget>.generate(_chipLabels.length,
                              (int index) {
                            return ChoiceChip(
                              label: Text(_chipLabels[index]),
                              selected: _chipSelections[index],
                              selectedColor: _chipSelections[index]
                                  ? _color[index]
                                  : LightColors.kRed,
                              onSelected: (bool selected) {
                                setState(() {
                                  _chipSelections = [false, false, false];
                                  _chipSelections[index] = selected;
                                });
                                print(_chipSelections);
                              },
                            );
                          }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
            Container(
              height: 40.0,
              width: 220.0,
              decoration: BoxDecoration(
                color: LightColors.kBlue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForumDiscussion(),
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    'Send',
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
    );
  }
}
