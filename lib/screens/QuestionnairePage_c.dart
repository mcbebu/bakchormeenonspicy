import 'package:flutter/material.dart';
import 'package:flutter_bak/screens/summary.dart';

import '../theme/colors/light_colors.dart';
import '../widgets/back_button.dart';

class QuestionnairePage_c extends StatefulWidget {
  final int previousSumA;
  final int previousSumB;

  const QuestionnairePage_c(
      {Key? key, required this.previousSumA, required this.previousSumB})
      : super(key: key);

  @override
  _QuestionnairePageState_c createState() => _QuestionnairePageState_c();
}

class _QuestionnairePageState_c extends State<QuestionnairePage_c> {
  List<int> _selectedValues = List<int>.filled(5, 0);

  Object? get qa => null;

  int _calculateSum() {
    int sum = _selectedValues.reduce((value, element) => value + element);
    return sum;
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
                    'Section C',
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
                'I feel I treat some recipients as if they were impersonal "objects"',
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
                'I have become more callous towards people since I took this job',
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
                'I worry that this job is hardening me emotionally',
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
                'I dont really care what happens to some recipients',
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
                'I feel recipients blame me for some of their problems',
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
                          builder: (context) => Summary(
                              previousSumA: widget.previousSumA,
                              previousSumB: widget.previousSumB,
                              previousSumC: _calculateSum())),
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
            print(_selectedValues);
            print(_calculateSum());
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
