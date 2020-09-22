import 'package:flutter/material.dart';

 Widget drawerChat(BuildContext context){

return  Drawer(
        elevation: 0,

        child: Container(
          color:Colors.black,
          child: Column(
            children: <Widget>[
              DrawerHeader(
                
                decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("images/C.jpg"),fit: BoxFit.fill)),
                child: Container(
                  
                  width: 300,
                height: 300,
                color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      CircleAvatar(
                        maxRadius: 22,
                        backgroundImage: AssetImage("images/b.jpeg"),

                      ),
                      Text("Chelida",style: TextStyle(color: Colors.white),),
                      Text("orphelia.domi@gmail.com",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                ),
                Expanded(child: Container(
                  
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        onTap: (){
                          Navigator.pushNamed(context, 'profilChat');
                          
                        },
                        leading: IconButton(icon: Icon(Icons.person,color: Color(0XFF0707ED)), onPressed:(){} ),
                        title: Text("Mon profil",style: TextStyle(color: Colors.white),),
                      ),
                      ListTile(
                        onTap: (){
                        Navigator.pushNamed(context, 'contacts');

                        },
                          leading: IconButton(icon: Icon(Icons.people,color: Color(0XFF0707ED)), onPressed:(){} ),
                        title: Text("Mes contacts",style: TextStyle(color: Colors.white),),
                      ),
                      ListTile(
                        leading: IconButton(icon: Icon(Icons.settings,color: Color(0XFF0707ED)), onPressed:(){} ),
                        title: Text("Parametre",style: TextStyle(color: Colors.white),),
                      ),
                      ListTile(
                        leading: IconButton(icon: Icon(Icons.chat,color: Color(0XFF0707ED)), onPressed:(){} ),
                        title: Text("Partager",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                ))
            ],
          ),
        ),
      );

 }