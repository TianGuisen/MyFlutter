import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List texts="qwerasdfzxcvqwersafdasdfweqwerasdfzxcvqwersafdasdfweqwerasdfzxcvqwersafdasdfweqwerasdfzxcvqwersafdasdfwe".split("").map((e)=> Text(e)).toList();
    return Scaffold(
      appBar: AppBar(title: Text("标题栏")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        scrollDirection : Axis.vertical,
        child: Center(
          child: Column(
            children:texts ,
          ),
        ),
      ),
    );
  }
}
