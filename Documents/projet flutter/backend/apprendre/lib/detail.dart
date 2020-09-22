import 'package:apprendre/models/category.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    var data = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    print(data);

    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: 310,
            height: 150,
            child: ListView.builder(
              itemBuilder: (context, i) {
                return Card(
                  color: Colors.lightGreen,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(data.ingredients[i]),
                  ),
                );
              },
              itemCount: data.ingredients.length,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: 310,
            height: 150,
            child: ListView.builder(
              itemBuilder: (context, i) {
                return Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(data.steps[i]),
                  ),
                );
              },
              itemCount: data.steps.length,
            ),
          ),
        ],
      ),
    );
  }
}
