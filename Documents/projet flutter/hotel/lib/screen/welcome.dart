import 'package:flutter/material.dart';


class Welcome extends StatefulWidget {
  Welcome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Welcome createState() => new _Welcome();
}

class _Welcome extends State<Welcome> {
  double size = 10.0;
  double activeSize = 10.0;

  PageController controller;
  PageController controllerLandscape;

  @override
  void initState() {
    controller = new PageController();
    super.initState();
  }

  @override
  void didUpdateWidget(Welcome oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/ecran.jpg"), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Regarder sur tout type d'écran",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Utilisez n'importe quel équipement pour accéder à votre plateforme préférée. Une application mobile sera bientôt disponible pour Android et iOS pour vous connecter à vos stations radios, films, séries et chaînes de télévisions en toute sécurité.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ))
          ],
        ),
      ),
      new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/bl1.jpg"), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Chaînes de télévision",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Ne manquez aucune émission et programme télévisé. Soyez les premiers sur l'information. Suivez toutes vos chaînes depuis votre plateforme.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ))
          ],
        ),
      ),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/serie1.jpg"), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Films et Séries",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Nous vous plongeons au cœur de vos films et séries les plus populaires du moment. Toutes les nouvelles sorties sont disponibles pour vous. Regardez et téléchargez des vidéos en toute sécurité sur notre plateforme selon votre préférence.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ))
          ],
        ),
      ),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/radio.jpg"), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Vos Radios Préferées",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Ayez accès à toutes vos stations radios nationales et internationales sur votre plateforme. Vos stations préférées sont disponibles 24h/24 et 7 jours/7. Connectez-vous partout et à tout moment à l'actualité du moment.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ))
          ],
        ),
      )
    ];

    var childrenL = <Widget>[
      Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              margin: EdgeInsets.only(left: 60),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/ecran.jpg"), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 280,
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Regarder sur tout type d'écran",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                width: 280,
                child: Text(
                  "Utilisez n'importe quel équipement pour accéder à votre plateforme préférée. Une application mobile sera bientôt disponible pour Android et iOS pour vous connecter à vos stations radios, films, séries et chaînes de télévisions en toute sécurité.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ))
          ],
        ),
      ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              margin: EdgeInsets.only(left: 60),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/ta.jpg"), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 280,
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Find best deals",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Find deals for any season from cosy country homes to city flats",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ))
          ],
        ),
      ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              margin: EdgeInsets.only(left: 60),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/amis.jpg"), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 280,
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Find best deals",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Find deals for any season from cosy country homes to city flats",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ))
          ],
        ),
      ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              margin: EdgeInsets.only(left: 60),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/monde.jpg"), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 280,
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Find best deals",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Find deals for any season from cosy country homes to city flats",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ))
          ],
        ),
      ),
    ];

    return new Scaffold(
        backgroundColor: Colors.black,
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? viewPortrait(children)
            : viewLandscape(childrenL));
  }

  Widget viewPortrait(List<Widget> children) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              child: new Stack(
                children: <Widget>[
                  new PageView(
                    controller: controller,
                    children: children,
                  ),
                  new Align(
                    alignment: Alignment.bottomCenter,
                    child: new Padding(
                      padding: new EdgeInsets.only(bottom: 20.0),
                      child: new PageIndicator(
                        layout: PageIndicatorLayout.DROP,
                        size: size,
                        activeSize: activeSize,
                        controller: controller,
                        space: 5.0,
                        count: 4,
                        color: Colors.white,
                        activeColor: Colors.blue,
                      ),
                    ),
                  )
                ],
              )),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'connexion');
            },
            child: Container(
              alignment: Alignment.center,
              width: 140,
              height: 56,
              child: Text(
                "Demarrer",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20),
              ),
              decoration: BoxDecoration(
                  color: Colors.red,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff5eacf6), Color(0xff26559b)]),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ],
      ),
    );
  }

  Widget viewLandscape(List<Widget> children) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 2,
              alignment: Alignment.center,
              child: new Stack(
                children: <Widget>[
                  new PageView(
                    controller: controllerLandscape,
                    children: children,
                  ),
                  new Positioned(
                    top: MediaQuery.of(context).size.height / 1.1,
                    left: MediaQuery.of(context).size.height / 2.2,
                    child: new Padding(
                      padding: new EdgeInsets.only(bottom: 20.0),
                      child: new PageIndicator(
                        layout: PageIndicatorLayout.DROP,
                        size: size,
                        activeSize: activeSize,
                        controller: controller,
                        space: 5.0,
                        count: 4,
                        color: Colors.black,
                        activeColor: Colors.blue,
                      ),
                    ),
                  )
                ],
              )),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'connexion');
            },
            child: Container(
              alignment: Alignment.center,
              width: 140,
              height: 56,
              child: Text(
                "Demarrer",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20),
              ),
              decoration: BoxDecoration(
                  color: Colors.red,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff5eacf6), Color(0xff26559b)]),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ],
      ),
    );
  }
}
