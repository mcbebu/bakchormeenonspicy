import 'package:flutter/material.dart';

import '../theme/colors/light_colors.dart';
import '../widgets/back_button.dart';
import 'QuestionnairePage_c.dart';

class QuestionnairePage_b extends StatefulWidget {
  final int previousSum;

  const QuestionnairePage_b({Key? key, required this.previousSum})
      : super(key: key);

  @override
  _QuestionnairePageState_b createState() => _QuestionnairePageState_b();
}

class _QuestionnairePageState_b extends State<QuestionnairePage_b> {
  List<int> _selectedValues = List<int>.filled(8, -1);

  Object? get qa => null;

  int _calculateSum() {
    int sum = _selectedValues.reduce((value, element) => value + element);
    return sum;
    // print('Sum of answers: $sum');
    // int totalSum = sum + widget.previousSum;
    // print('Total sum: $totalSum');
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
                    'Section B',
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
                'I can easily understand how my recipients feel about things',
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
                'I deal very effectively with the problems of my recipients',
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
                'I feeel I am positively inflencing other people lives through my work',
                style: TextStyle(fontSize: 17.0),
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
                'I feel very energetic',
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
                'I can easily create a relaxed atmosphere with my recipients',
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
                'I feel exhilarated after working closely with my recipients',
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
                'I have accomplished many worthwhile things in this job',
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
                'in my work.I deal with emotional prolems very calmly',
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
                          builder: (context) => QuestionnairePage_c(
                              previousSumA: widget.previousSum,
                              previousSumB: _calculateSum())),
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
