import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carros'),
      ),
      body: _listView(),
    );
  }
}

_listView() {
  return ListView.builder(
    itemCount: 50,
    itemBuilder: (ctx, idx) {
      return Text('Carro $idx');
    },
  );
}
