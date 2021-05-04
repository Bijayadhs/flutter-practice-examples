import 'package:flutter/material.dart';
import 'package:flutter_practice_project/transition/card_widget.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: CardWidget(index: index),
        ),
      ),
    );
  }
}
