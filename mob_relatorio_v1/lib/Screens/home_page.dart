import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5, left: 58),
              child: Text(
                'Relatórios',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 11, left: 90),
              child: Text(
                '____',
                style: TextStyle(
                    color: Colors.yellow, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 24),
            child: Card(
              elevation: 3,
              color: Colors.blue[300],
              child: Container(
                padding: EdgeInsets.only(left: 100),
                height: 170,
                width: 300,
                child: Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    'META X DIA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      backgroundColor: Colors.blue,
    );
  }
}
