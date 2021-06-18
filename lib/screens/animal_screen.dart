import 'package:flutter/material.dart';
import 'package:animals/models/animal.dart';

class AnimalScreen extends StatefulWidget {
  AnimalScreen({required this.animal});
  final Animal animal;

  @override
  _AnimalScreenState createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  @override
  void initState() {
    super.initState();
    this.widget.animal.play();
  }

  @override
  Widget build(BuildContext context) {
    Animal animal = this.widget.animal;
    return Scaffold(
      backgroundColor: Color(0xFFB4CFBB),
      appBar: AppBar(
        backgroundColor: Color(0xFFDEE1CA),
        centerTitle: true,
        leading: Container(),
        title: Text(animal.label),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: animal.tag,
              child: Container(
                width: 240,
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
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Ink(
                  decoration: ShapeDecoration(
                    color: Colors.lightBlue,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.white,
                    icon: Icon(Icons.west),
                  ),
                ),
                SizedBox(width: 16),
                Ink(
                  decoration: ShapeDecoration(
                    color: Colors.redAccent,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {
                      this.widget.animal.play();
                    },
                    color: Colors.white,
                    icon: Icon(Icons.play_arrow),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
