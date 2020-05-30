import 'package:alert/pages/alert-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var hh = MediaQuery.of(context).size.height;
    var ww = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Title'),
      ),
      body: Container(
        height: hh,
        width: ww,
        child: Center(
          child: Column(
            children: <Widget>[
              AlertDialog(
                title: Text('AlertDialog Title'),
                content: ListBody(
                  children: <Widget>[
                    Text('This is a demo alert dialog.'),
                    Text('Would you like to approve of this message?'),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Approve'),
                    onPressed: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AlertPage()))
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
