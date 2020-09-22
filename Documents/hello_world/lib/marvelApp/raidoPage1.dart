import 'provider/data.dart';

import 'widget/radioItem.dart';
import 'package:flutter/material.dart';

class RadioPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage('images/logofm.png'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Lite des pays
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.2,
                child: ListView.builder(
                    itemCount: PaysList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Container(
                        height: 60,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(PaysList[i].nom,
                              style: TextStyle(color: Colors.white)),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20),
              //Liste Radio
              Container(
                  // color: Colors.white,
                  height: 400,
                  width: MediaQuery.of(context).size.width / 1.08,
                  child: ListView.builder(
                      itemCount: RadioDataList.length,
                      itemBuilder: (context, i) {
                        return RadioItem(
                            id: RadioDataList[i].id,
                            cover: RadioDataList[i].cover,
                            titre: RadioDataList[i].titre,
                            frequence: RadioDataList[i].frequence,
                            urlRadio: RadioDataList[i].urlRadio,
                            index: i);
                      })),
              // RadioInPlay()
            ],
          ),
        ),
      ),
    );
  }
}
