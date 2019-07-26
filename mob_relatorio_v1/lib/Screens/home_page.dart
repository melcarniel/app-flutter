import 'package:flutter/material.dart';
import 'package:mob_relatorio_v1/widgets/body_home.dart';

class HomePage extends StatelessWidget {

  AppBar _appBar() {
    return AppBar(
      title: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5, left: 80),
            child: Text(
              'Relatórios',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 11, left: 112),
            child: Text(
              '____',
              style: TextStyle(
                  color: Colors.yellow, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      elevation: 0.0,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: BodyHome()
      ),
      drawer: Drawer(),
      backgroundColor: Colors.blue,
    );
  }

  
}
