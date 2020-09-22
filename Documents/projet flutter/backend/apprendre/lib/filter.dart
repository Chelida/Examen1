import 'package:apprendre/models/category.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool currentValue = false;
  bool currentValue1 = false;
  bool currentValue2 = false;
  bool currentValue3 = false;

  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context).settings.arguments as Map;
    var ok =
        DUMMY_MEALS.where((element) => element.isVegetarian == true).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Filtrer'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              SwitchListTile(
                onChanged: (value) {
                  setState(() {
                    currentValue = !currentValue;
                  });

                  var ok = DUMMY_MEALS
                      .where((element) => element.isVegetarian == true)
                      .toList();
                  print(ok);
                },
                title: Text("vegetarian"),
                value: currentValue,
                subtitle: Text("tus aime sa"),
              ),
              SizedBox(
                height: 10,
              ),
              SwitchListTile(
                onChanged: (value) {
                  setState(() {
                    currentValue1 = !currentValue1;
                    print(currentValue1);
                  });
                },
                title: Text("vegetarian"),
                value: currentValue1,
                subtitle: Text("tu aime sa hien"),
              ),
              SizedBox(
                height: 10,
              ),
              SwitchListTile(
                onChanged: (value) {
                  setState(() {
                    currentValue2 = !currentValue2;
                  });
                },
                title: Text("vegan"),
                value: currentValue2,
                subtitle: Text("tu pret djo"),
              ),
              SizedBox(
                height: 10,
              ),
              SwitchListTile(
                onChanged: (value) {
                  setState(() {
                    currentValue3 = !currentValue3;
                    print(currentValue3);
                  });
                },
                title: Text("Lactose"),
                value: currentValue3,
                subtitle: Text("on a un plat en commun hien"),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: ok.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          ok[index].title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: InkWell(
                            onTap: () {
                              print(ok[index].id);
                              Navigator.of(context).pushNamed('/detail',
                                  arguments: DUMMY_MEALS[index].id);
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
