import 'package:animals/screens/animal_screen.dart';
import 'package:flutter/material.dart';
import 'package:animals/models/animal.dart';

class PlayScreen extends StatelessWidget {
  static const id = 'play_screen';

  List<Widget> buildGridListItems(BuildContext context) {
    return animals.map((animal) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AnimalScreen(animal: animal),
            ),
          );
        },
        child: Hero(
          tag: animal.tag,
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Image(
              image: AssetImage(animal.avatar),
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB4CFBB),
      appBar: AppBar(
        backgroundColor: Color(0xFFDEE1CA),
        centerTitle: true,
        leading: Container(),
        title: Hero(
          tag: 'pikachu',
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('images/pikachu_icon.png'),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        child: GridView.count(
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          crossAxisCount: 2,
          children: buildGridListItems(context),
        ),
      ),
    );
  }
}
