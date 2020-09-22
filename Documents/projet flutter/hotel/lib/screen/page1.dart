import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.4,
            decoration: BoxDecoration(color: Colors.red,image: DecorationImage(image: AssetImage('images/sy.jpg'),fit: BoxFit.cover),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    Icons.pause,
                    size: 21,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 240,top: 18),
            child: Text('Overview',style: TextStyle(fontSize: 20),),
          )
        ],
      ),
    );
  }
}
