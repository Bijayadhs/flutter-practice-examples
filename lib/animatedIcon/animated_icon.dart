import 'package:flutter/material.dart';

class AnimatedIconPage extends StatefulWidget {
  @override
  _AnimatedIconPageState createState() => _AnimatedIconPageState();
}

class _AnimatedIconPageState extends State<AnimatedIconPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  bool isPlaying = false;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    // controller.forward().then((_) async {
    //   await Future.delayed(Duration(seconds: 2));
    //   controller.reverse();
    // });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Icon'),
        leading: IconButton(
          onPressed: toggleIcon,
          icon: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: Colors.pink,
          ),
        ),
      ),
      body: Center(
        child: IconButton(
          onPressed: toggleIcon,
          iconSize: 200,
          splashColor: Colors.green,
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: controller,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }

  void toggleIcon() => setState(() {
        isPlaying = !isPlaying;
        isPlaying ? controller.forward() : controller.reverse();
      });
}
