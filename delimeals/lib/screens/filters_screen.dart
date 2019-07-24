import 'package:delimeals/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters-screen';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget buildSwitchListTile(variable, textTitle, textSub) {
    return SwitchListTile(
      title: Text(textTitle),
      value: variable,
      subtitle: Text(textSub),
      onChanged: (newValue) {
        setState(() {
          variable = newValue;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filtros'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Ajustar preferências',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                buildSwitchListTile(
                    _glutenFree, 'Sem gluten', 'Apenas refeições sem gluten'),
                buildSwitchListTile(_lactoseFree, 'Sem lactose',
                    'Apenas refeições sem lactose'),
                buildSwitchListTile(_vegetarian, 'Vegetariana',
                    'Apenas refeições vegetarianas'),
                buildSwitchListTile(
                    _vegan, 'Vegana', 'Apenas refeições veganas'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
