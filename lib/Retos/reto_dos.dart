import 'package:flutter/material.dart';

void main() => runApp(AppRetos());

class AppRetos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.yellow),
      title: 'Retos de Flutter',
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Reto 2'),
        ),
        body: Stack(
          children: [
            Center(
                child: Container(
              child: Image.network(
                  'https://1.bp.blogspot.com/-yt-PzGqN9ro/VHNT6TnSXdI/AAAAAAADGu4/ULNaDasBwFs/s1600/izCB5OiOdbgIg.png'),
            )),
            Center(
              child: Container(
                width: 500,
                height: 100,
                child: Text(
                  "Batman nanana",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black12),
                ),
              ),
            ),
          ],
        ));
  }
}
