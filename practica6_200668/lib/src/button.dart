import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String fluttertext = "Sandra";
  int index = 0;
  List<String> collections = ['Flutter', 'es', 'importante'];

  void onPressButton() {
    setState(() {
      fluttertext = collections[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(fluttertext),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            ElevatedButton(
              child: Text(
                "Actualizar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: onPressButton,
            )
          ],
        )),
      ),
    );
  }
}
