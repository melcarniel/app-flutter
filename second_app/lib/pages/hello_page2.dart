import 'package:flutter/material.dart';
import 'package:second_app/utils/nav.dart';
import 'package:second_app/widgets/blue_button.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: _body(context),
    );
  }
}

_body(BuildContext context) {
  return Center(
    child: BlueButton('Voltar', onPressed: () => _onClickVoltar(context)),
  );
}

_onClickVoltar(BuildContext context) {
  pop(context, 'Tela 2');
}
