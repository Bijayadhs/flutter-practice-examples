import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';

class FlushbarPage extends StatefulWidget {
  @override
  _FlushbarPageState createState() => _FlushbarPageState();
}

class _FlushbarPageState extends State<FlushbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FlushBar')),
      body: Center(
        child: Builder(
          builder: (context) => Column(
            children: [
              RaisedButton(
                child: Text('Click ME'),
                onPressed: () => showSnackBar(context),
              ),
              RaisedButton(
                child: Text('Flush Bar'),
                onPressed: () => showFlushBar(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text(
        'Hello I am SnackBar',
        style: TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
      action: SnackBarAction(
          label: 'dismiss', textColor: Colors.white, onPressed: () {}),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.green,
      shape: StadiumBorder(),
      behavior: SnackBarBehavior.floating,
    );
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  void showFlushBar(BuildContext context) {
    Flushbar(
      title: 'Title',
      message: 'Hello',
      shouldIconPulse: true,
      borderRadius: 20,
      barBlur: 20,
      margin: EdgeInsets.fromLTRB(12, 100, 12, 0),
      flushbarPosition: FlushbarPosition.TOP,
      icon: Icon(
        Icons.error,
        size: 20,
        color: Colors.red,
      ),
      mainButton: FlatButton(
        onPressed: () {},
        child: Text('Help me'),
      ),
      duration: Duration(seconds: 3),
      // animationDuration: Duration(microseconds: 100),
      boxShadows: [
        BoxShadow(
          color: Colors.red,
          offset: Offset(2, 2),
          blurRadius: 8,
        )
      ],
      backgroundGradient: LinearGradient(
        colors: [Colors.red, Colors.orange],
      ),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    )..show(context);
  }
}
