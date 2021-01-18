import 'package:flutter/material.dart';
import 'package:flutter_practice_project/transition/card_widget.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => CardWidget(index: index),
    );
  }
}
