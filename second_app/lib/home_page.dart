import 'package:flutter/material.dart';
import 'package:second_app/pages/hello_listview.dart';
import 'package:second_app/pages/hello_page1.dart';
import 'package:second_app/pages/hello_page2.dart';
import 'package:second_app/pages/hello_page3.dart';
import 'package:second_app/utils/nav.dart';
import 'package:second_app/widgets/blue_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'drawer_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter',
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Tab1',
              ),
              Tab(
                text: 'Tab2',
              ),
              Tab(
                text: 'Tab3',
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          _body(context),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.red,
          )
        ],),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "btn1",
              child: Icon(Icons.add),
              onPressed: () {
                _onClickFAB();
              },
            ),
            SizedBox(
              width: 8,
            ),
            FloatingActionButton(
              heroTag: "btn2",
              child: Icon(Icons.favorite),
              onPressed: () {
                _onClickFAB();
              },
            ),
          ],
        ),
        drawer: DrawerList(),
      ),
    );
  }
}

_onClickFAB() {
  print('Adicionar!');
}

_body(context) {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _text(),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            height: 300,
            child: _pageView(),
          ),
          _buttons(),
        ],
      ),
    ),
  );
}

PageView _pageView() {
  return PageView(
    children: <Widget>[
      _img('assets/images/dog1.png'),
      _img('assets/images/dog2.png'),
      _img('assets/images/dog3.png'),
      _img('assets/images/dog4.png'),
      _img('assets/images/dog5.png'),
    ],
  );
}

_buttons() {
  return Builder(
    builder: (context) {
      return Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BlueButton('Listview',
                  onPressed: () => _onClickNavigator(context, HelloListview())),
              BlueButton('Page 2',
                  onPressed: () => _onClickNavigator(context, HelloPage2())),
              BlueButton('Page 3',
                  onPressed: () => _onClickNavigator(context, HelloPage3())),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BlueButton('Snack', onPressed: () => _onClickSnack(context)),
              BlueButton('Dialog', onPressed: () => _onClickDialog(context)),
              BlueButton('Toast', onPressed: () => _onClickToast(context)),
            ],
          )
        ],
      );
    },
  );
}

void _onClickNavigator(context, page) async {
  String s = await push(context, page);
  print('>> $s');
}

_onClickSnack(context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('Flutter snackbar'),
    action: SnackBarAction(
      textColor: Colors.yellow,
      label: 'OK',
      onPressed: () {
        print('OK');
      },
    ),
  ));
}

_onClickToast(context) {
  Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

_onClickDialog(context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text('Flutter dialog!'),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {
                  pop(context, 'dialog');
                },
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  pop(context, 'dialog');
                  print('OK!');
                },
              )
            ],
          ),
        );
      });
}

_img(img) {
  return Image.asset(
    img,
    fit: BoxFit.cover,
  );
}

_text() {
  return Text(
    'Hello!',
    style: TextStyle(
      fontSize: 30,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.underline,
      decorationColor: Colors.red,
      decorationStyle: TextDecorationStyle.solid,
    ),
  );
}
