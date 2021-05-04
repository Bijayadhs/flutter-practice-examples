import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidablePage extends StatefulWidget {
  @override
  _SlidablePageState createState() => _SlidablePageState();
}

class _SlidablePageState extends State<SlidablePage> {
  List<String> items = ['Apple', 'Banana', 'Mango'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SlidablePage'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          final item = items[index];
          return Slidable(
            actionPane: SlidableBehindActionPane(),
            actionExtentRatio: 0.25,
            child: Container(
              color: Colors.yellow[100],
              child: ListTile(
                  leading: CircleAvatar(
                    child: Text('\$3'),
                  ),
                  title: Text(item)),
            ),
            actions: [
              IconSlideAction(
                caption: 'Archive',
                icon: Icons.archive,
                color: Colors.blue,
                onTap: () {},
              ),
              IconSlideAction(
                caption: 'Share',
                color: Colors.indigo,
                icon: Icons.share,
                onTap: () {},
              ),
            ],
            secondaryActions: [
              IconSlideAction(
                caption: 'More',
                color: Colors.black54,
                icon: Icons.more_horiz,
                onTap: () {},
              ),
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () {},
              ),
            ],
          );
        },
      ),
    );
  }
}
