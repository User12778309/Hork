import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable Dialog Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scrollable Dialog Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _showScrollableDialog(context);
            },
            child: Text('Show Scrollable Dialog'),
          ),
        ),
      ),
    );
  }

  void _showScrollableDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Scrollable Dialog'),
          content: SingleChildScrollView(
            child: ListBody(
              children: List.generate(30, (index) {
                return Text('Item ${index + 1}');
              }),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}