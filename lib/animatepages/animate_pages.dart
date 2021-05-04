import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_project/transition/first_page.dart';
import 'package:flutter_practice_project/transition/second_page.dart';

class AnimatePages extends StatefulWidget {
  @override
  _AnimatePagesState createState() => _AnimatePagesState();
}

class _AnimatePagesState extends State<AnimatePages> {
  int index = 0;
  List<Widget> pages = [FirstPage(), SecondPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageTransitionSwitcher(
              duration: Duration(seconds: 2),
              // reverse: isFirstPage,
              transitionBuilder: (child, animation, secondaryAnimation) =>
                  FadeThroughTransition(
                child: child,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
              ),
              child: pages[index],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    FirstPage();
                  },
                  child: Text('First Page'),
                ),
                ElevatedButton(
                  onPressed: () {
                    SecondPage();
                  },
                  child: Text('Second Page'),
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
