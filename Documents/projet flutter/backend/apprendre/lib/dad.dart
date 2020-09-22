import 'package:apprendre/models/category.dart';
import 'package:apprendre/retour.dart';
import 'package:flutter/material.dart';

class Dad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          'Liste de Spécialité',
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.lightGreen,
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'filter');
              },
              child: Text(
                'Filtrer',
                style: TextStyle(fontSize: 22),
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            print(index);
            return Retour(
              DUMMY_CATEGORY[index].id,
              DUMMY_CATEGORY[index].title,
              DUMMY_CATEGORY[index].color,
            );
          },
          itemCount: DUMMY_CATEGORY.length),
    );
  }
}
