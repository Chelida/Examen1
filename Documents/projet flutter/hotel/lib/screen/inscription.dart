import 'package:flutter/material.dart';
class Inscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("images/bl1.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken)),
          ),
          child: SingleChildScrollView(
                      child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage(
                      "images/b.jpeg",
                    )),
                  ),
                  height: 100,
                  width: 100,
                ),
               
                SizedBox(
                  height: 30,
                ),



               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white, width: 1)),
                      width: 230,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Nom",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),

              SizedBox(height: 10,),


            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white, width: 1)),
                      width: 230,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              
              SizedBox(height: 10,),
              

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white, width: 1)),
                      width: 230,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Numero",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: Icon(
                        Icons.visibility_off,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white, width: 1)),
                      width: 230,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'confidentialite');
                  },
                                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 100),
                    width: 140,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white)),
                    child: Text(
                      "Inscription",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
               
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}