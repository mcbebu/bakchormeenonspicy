import 'dart:ui';

import 'package:flutter/material.dart';

class ForumDiscussion extends StatefulWidget {
  @override
  _ForumDiscussion createState() => new _ForumDiscussion();
}

class _ForumDiscussion extends State<ForumDiscussion> {
  final List<Post> posts = [new Post("I am sad", "I want to cry"), new Post("I am unsatisfied with my pay", "I have worked for so long")];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Forum discussion",
          style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          new IconButton(
            onPressed: () => debugPrint("add"),
            icon: new Icon(Icons.add),
          )
        ],
      ),
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (context, int index) => 
          posts[index],
          itemCount: this.posts.length,
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
    return new Card(
      child: new Container(
        child: new Row(
          children: <Widget>[
            new Column(
              children: [
                Text(title),
                SizedBox(height: 10,),
                Text(content),
              ]
            )
          ],
        ),
      ),
    );
  }
}

String colorInHex(int code) {
  if (code == 1) {
    return "0x7EEF9D";
  } else if (code == 2) {
    return "0xF8B585";
  } else {
    return "0xEA8B8B";
  }
}
