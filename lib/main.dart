import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'newpage.dart';
import 'Scrollingscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  void showAlertDialog(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            actions: <Widget>[
              CupertinoDialogAction(
                child: const Text("newpage"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => newpage()));
                },
              ),
              CupertinoDialogAction(
                child: const Text("Scrollingscreen"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => Scrollingscreen()));
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showAlertDialog(context),
      child: const Text(
        "Show Dialog",
        style: TextStyle(fontSize: 30, color: Colors.amberAccent),
      ),
    );
  }
}
