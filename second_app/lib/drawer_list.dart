import 'package:flutter/material.dart';
import 'package:second_app/utils/nav.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Melina Carniel'),
              accountEmail: Text('melinagarciac@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/dog1.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Favoritos'),
              subtitle: Text('mais informações'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Favoritos');
                pop(context, 'favoritos');
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Ajuda'),
              subtitle: Text('mais informações'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ajuda');
                pop(context, 'ajuda');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Sair');
                pop(context, 'sair');
              },
            ),
          ],
        ),
      ),
    );
  }
}
