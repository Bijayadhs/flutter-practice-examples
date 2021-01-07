import 'package:flutter/material.dart';

class StreamPage extends StatelessWidget {
  double bitcoin = 3500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Builder'),
      ),
      body: StreamBuilder<double>(
          initialData: bitcoin,
          stream: getBitcoinPrice(),
          builder: (context, snapshot) {
            final bitcoins = snapshot.data.toStringAsFixed(2);
            return Center(
              child: Text(
                bitcoins,
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.green[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }),
    );
  }

  Stream<double> getBitcoinPrice() => Stream<double>.periodic(
      Duration(seconds: 1), (count) => bitcoin + count * 5);
}
