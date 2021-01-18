import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_project/transition/first_page.dart';
import 'package:flutter_practice_project/transition/second_page.dart';

class TransitionPage extends StatefulWidget {
  @override
  _TransitionPageState createState() => _TransitionPageState();
}

class _TransitionPageState extends State<TransitionPage> {
  bool isFirstPage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isFirstPage ? 'FirstPage' : 'SecondPage'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageTransitionSwitcher(
              duration: Duration(seconds: 1),
              // reverse: isFirstPage,
              transitionBuilder: (child, animation, secondaryAnimation) =>
                  SharedAxisTransition(
                child: child,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.vertical,
              ),
              child: isFirstPage ? FirstPage() : SecondPage(),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: isFirstPage ? null : togglePage,
                  child: Text('Back'),
                ),
                ElevatedButton(
                  onPressed: isFirstPage ? togglePage : null,
                  child: Text('Forward'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void togglePage() {
    setState(() => isFirstPage = !isFirstPage);
  }
}
