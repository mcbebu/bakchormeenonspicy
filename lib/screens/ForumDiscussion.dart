import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bak/screens/questionaire.dart';
import 'package:flutter_bak/theme/colors/light_colors.dart';
import 'package:flutter_bak/widgets/task_column.dart';
import 'package:flutter_bak/widgets/task_container.dart';
import 'package:flutter_bak/widgets/top_container.dart';

class ForumDiscussion extends StatefulWidget {
  @override
  _ForumDiscussion createState() => new _ForumDiscussion();
}

class _ForumDiscussion extends State<ForumDiscussion> {
  final List<Post> posts = [
    new Post("I am sad", "I want to cry"),
    new Post("I am unsatisfied with my pay", "I have worked for so long")
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              height: 100,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(''),
                        SizedBox(width: 20.0),
                        Text(''),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Questionaire()),
                            );
                          },
                          child: Icon(Icons.add,
                              color: LightColors.kDarkBlue, size: 30.0),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Forum discussion',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    color: LightColors.kDarkBlue,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) => posts[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  String title;
  String content;

  Post(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return TaskContainer(
      title: title,
      subtitle: content,
      boxColor: LightColors.kLightYellow2,
    );
  }
}
