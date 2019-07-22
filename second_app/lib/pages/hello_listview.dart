import 'package:flutter/material.dart';
import 'package:second_app/pages/dog_page.dart';
import 'package:second_app/utils/nav.dart';

class Dog {
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

class HelloListview extends StatefulWidget {
  @override
  _HelloListviewState createState() => _HelloListviewState();
}

class _HelloListviewState extends State<HelloListview> {
  bool gridView = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              print('Lista');
              setState(() {
                gridView = false;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.grid_on),
            onPressed: () {
              print('Grid');
              setState(() {
                gridView = true;
              });
            },
          ),
        ],
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    List<Dog> dogs = [
      Dog('Jack Russel', 'assets/images/dog1.png'),
      Dog('Labrador', 'assets/images/dog2.png'),
      Dog('Pug', 'assets/images/dog3.png'),
      Dog('Rottweiller', 'assets/images/dog4.png'),
      Dog('Pastor', 'assets/images/dog5.png'),
    ];

    if (gridView) {
      return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: dogs.length,
        itemBuilder: (context, index) {
          Dog dog = dogs[index];
          return _itemView(dog);
        },
      );
    } else {
      return ListView.builder(
        itemExtent: 300,
        itemCount: dogs.length,
        itemBuilder: (context, index) {
          Dog dog = dogs[index];
          return _itemView(dog);
        },
      );
    }
  }

  _itemView(Dog dog) {
    return GestureDetector(
      onTap: () {
        push(context, DogPage(dog));
      },
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _img(dog.foto),
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                dog.nome,
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _img(img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
