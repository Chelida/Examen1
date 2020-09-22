import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: RaisedButton(
        color: Colors.green.withOpacity(0.4),
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 17),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
