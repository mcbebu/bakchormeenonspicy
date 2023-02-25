import 'package:flutter/material.dart';

import '../theme/colors/light_colors.dart';
import '../widgets/back_button.dart';
import 'QuestionnairePage_b.dart';

class QuestionnairePage_a extends StatefulWidget {
  @override
  _QuestionnairePageState_a createState() => _QuestionnairePageState_a();
}

class _QuestionnairePageState_a extends State<QuestionnairePage_a> {
  List<int> _selectedValues = List<int>.filled(9, 2);
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
            20,
          ),
          child: Column(
            children: <Widget>[
              MyBackButton(),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Section A',
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
                    'This section accesses feelings \n associated with burnout.',
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
              Text(
                'I feel emotionally drained by my work.',
                style: TextStyle(fontSize: 17.0),
              ),
              SizedBox(height: 2.0),
              Wrap(
                spacing: 1.0,
                runSpacing: 1.0,
                children: [
                  _buildButton('0', 0, 0),
                  _buildButton('1', 1, 0),
                  _buildButton('2', 2, 0),
                  _buildButton('3', 3, 0),
                  _buildButton('4', 4, 0),
                  _buildButton('5', 5, 0),
                  _buildButton('6', 6, 0),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'I feel used up at the end of the workday',
                style: TextStyle(fontSize: 17.0),
              ),
              SizedBox(height: 2.0),
              Wrap(
                spacing: 1.0,
                runSpacing: 1.0,
                children: [
                  _buildButton('0', 0, 1),
                  _buildButton('1', 1, 1),
                  _buildButton('2', 2, 1),
                  _buildButton('3', 3, 1),
                  _buildButton('4', 4, 1),
                  _buildButton('5', 5, 1),
                  _buildButton('6', 6, 1),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'I feel fatigued when I get up in the morning and have to face another day on the job',
                style: TextStyle(fontSize: 15.0),
              ),
              SizedBox(height: 2.0),
              Wrap(
                spacing: 1.0,
                runSpacing: 1.0,
                children: [
                  _buildButton('0', 0, 2),
                  _buildButton('1', 1, 2),
                  _buildButton('2', 2, 2),
                  _buildButton('3', 3, 2),
                  _buildButton('4', 4, 2),
                  _buildButton('5', 5, 2),
                  _buildButton('6', 6, 2),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Workig with people all day is really a strain for me',
                style: TextStyle(fontSize: 17.0),
              ),
              SizedBox(height: 2.0),
              Wrap(
                spacing: 1.0,
                runSpacing: 1.0,
                children: [
                  _buildButton('0', 0, 3),
                  _buildButton('1', 1, 3),
                  _buildButton('2', 2, 3),
                  _buildButton('3', 3, 3),
                  _buildButton('4', 4, 3),
                  _buildButton('5', 5, 3),
                  _buildButton('6', 6, 3),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'I feel burned out from my work',
                style: TextStyle(fontSize: 17.0),
              ),
              SizedBox(height: 2.0),
              Wrap(
                spacing: 1.0,
                runSpacing: 1.0,
                children: [
                  _buildButton('0', 0, 4),
                  _buildButton('1', 1, 4),
                  _buildButton('2', 2, 4),
                  _buildButton('3', 3, 4),
                  _buildButton('4', 4, 4),
                  _buildButton('5', 5, 4),
                  _buildButton('6', 6, 4),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'I feel frustrated by my job',
                style: TextStyle(fontSize: 17.0),
              ),
              SizedBox(height: 2.0),
              Wrap(
                spacing: 1.0,
                runSpacing: 1.0,
                children: [
                  _buildButton('0', 0, 5),
                  _buildButton('1', 1, 5),
                  _buildButton('2', 2, 5),
                  _buildButton('3', 3, 5),
                  _buildButton('4', 4, 5),
                  _buildButton('5', 5, 5),
                  _buildButton('6', 6, 5),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'I feel I am working too hard on my job',
                style: TextStyle(fontSize: 17.0),
              ),
              SizedBox(height: 2.0),
              Wrap(
                spacing: 1.0,
                runSpacing: 1.0,
                children: [
                  _buildButton('0', 0, 6),
                  _buildButton('1', 1, 6),
                  _buildButton('2', 2, 6),
                  _buildButton('3', 3, 6),
                  _buildButton('4', 4, 6),
                  _buildButton('5', 5, 6),
                  _buildButton('6', 6, 6),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Working with people puts too much stress on me',
                style: TextStyle(fontSize: 17.0),
              ),
              SizedBox(height: 2.0),
              Wrap(
                spacing: 1.0,
                runSpacing: 1.0,
                children: [
                  _buildButton('0', 0, 7),
                  _buildButton('1', 1, 7),
                  _buildButton('2', 2, 7),
                  _buildButton('3', 3, 7),
                  _buildButton('4', 4, 7),
                  _buildButton('5', 5, 7),
                  _buildButton('6', 6, 7),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'I feel like I am at the end of my rope',
                style: TextStyle(fontSize: 17.0),
              ),
              SizedBox(height: 2.0),
              Wrap(
                spacing: 1.0,
                runSpacing: 1.0,
                // alignment: WrapAlignment.spaceEvenly,
                children: [
                  _buildButton('0', 0, 8),
                  _buildButton('1', 1, 8),
                  _buildButton('2', 2, 8),
                  _buildButton('3', 3, 8),
                  _buildButton('4', 4, 8),
                  _buildButton('5', 5, 8),
                  _buildButton('6', 6, 8),
                ],
              ),
              SizedBox(height: 10.0),
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
                        builder: (context) =>
                            QuestionnairePage_b(previousSum: _calculateSum()),
                      ),
                    );
                  },
                  child: const Center(
                    child: Text(
                      'Next',
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

  Widget _buildButton(String label, int value, int question) {
    return Container(
      width: 40, // set the width here
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedValues[question] = value;
            print(value);
            _calculateSum();
          });
        },
        child: Text(label),
        style: ElevatedButton.styleFrom(
          backgroundColor:
              _selectedValues[question] == value ? LightColors.kGreen : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
