import 'package:flutter/material.dart';
import 'package:second_app/pages/hello_listview.dart';
import 'package:second_app/pages/hello_page1.dart';
import 'package:second_app/pages/hello_page2.dart';
import 'package:second_app/pages/hello_page3.dart';
import 'package:second_app/utils/nav.dart';
import 'package:second_app/widgets/blue_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter',
        ),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }
}

_body(context) {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            height: 300,
            child: _pageView(),
          ),
          _buttons(context),
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

_buttons(context) {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          BlueButton('Listview', onPressed: () => _onClickNavigator(context, HelloListview())),
          BlueButton('Page 2', onPressed: () => _onClickNavigator(context, HelloPage2())),
          BlueButton('Page 3', onPressed: () => _onClickNavigator(context, HelloPage3())),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          BlueButton('Snack', onPressed: _onClickSnack),
          BlueButton('Dialog', onPressed: _onClickDialog),
          BlueButton('Toast', onPressed: _onClickToast),
        ],
      )
    ],
  );
}

void _onClickNavigator(context, page) async {
  String s = await push(context, page);
  print('>> $s');
}

_onClickSnack() {}

_onClickToast() {}

_onClickDialog() {}


_img(img) {
  return Image.asset(
    img,
    fit: BoxFit.cover,
  );
}

_text() {
  return Text(
    'Oreooo',
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

