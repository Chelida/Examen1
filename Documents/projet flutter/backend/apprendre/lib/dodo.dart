import 'package:apprendre/detail.dart';
import 'package:apprendre/models/category.dart';
import 'package:flutter/material.dart';

class Dodo extends StatelessWidget {
  static const routeName = '/dodo';

  @override
  Widget build(BuildContext context) {
    // final categoriId = ModalRoute.of(context).settings.arguments as String;

    // print(categoriId);
    final data = ModalRoute.of(context).settings.arguments as Map;

    // print(data);
    // var datas;
    final id = data['id'];
    final color = data['color'];

    final title = data['title'];

    print('AAAAAAAAAAAAAAAAAAAAAAA');

    print('???????? firstWher $id ????????????');
    // var oka =
    //     DUMMY_MEALS.firstWhere((element) => element.categories.contains(id));

    // print(oka);

    print('???????? Where ????????????');
    var ok = DUMMY_MEALS
        .where((element) => element.categories.contains(id))
        .toList();
    print(ok);

    // print('???????? first print ????????????');
    // print(selectedMeal.id[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: ListView.builder(
        itemCount: ok.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                ok[index].title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: InkWell(
                  onTap: () {
                    print(ok[index].id);
                    Navigator.of(context)
                        .pushNamed('/detail', arguments: ok[index].id);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 6,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(ok[index].imageUrl),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
