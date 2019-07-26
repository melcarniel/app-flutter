import 'package:flutter/material.dart';

class BodyHome extends StatelessWidget {
  buildContainerListView(text) {
    return Container(
      transform: Matrix4.translationValues(25, 13.0, 0.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
    );
  }

  buildListTile(text) {
    return ListTile(
      leading: Icon(Icons.autorenew),
      title: Align(
        child: Text('02/05/2019 às 8:00'),
        alignment: Alignment(-1.4, 0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30, bottom: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue[400],
              border: Border.all(
                color: Colors.white30,
              )),
          height: 180,
          width: 360,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 358,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Colors.yellow, width: 2),
                    )),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'META X DIA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 358,
                    height: 60,
                    child: Text(
                      '21,16%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 45,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'R\u{0024} 50.000,00',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 45,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'R\u{0024} 10.580,89',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Meta',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      'Realizada',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          height: 350,
          width: 330,
          child: ListView(children: <Widget>[
            buildContainerListView('Fabricante X Meta'),
            buildListTile('02/05/2019 às 8:00'),
            Divider(),
            buildContainerListView('Cliente X Fabricante'),
            buildListTile('02/05/2019 às 8:00'),
            Divider(),
            buildContainerListView('Vendedor X Comissão'),
            buildListTile('02/05/2019 às 8:00'),
            Divider(),
            buildContainerListView('Vendedor X Visitas'),
            buildListTile('02/05/2019 às 8:00'),
            Divider(),
          ]),
        ),
      ],
    );
  }
}
