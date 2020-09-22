import '../model/meal.dart';
import '../widget/main_drawer.dart';

import '../screen/favorites_screen.dart';

import '../screen/categoriScreen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  TabsScreen(this.favoriteMeals);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': CategoriScreen(), 'title': 'Categories'},
      {'page': FavoritesScreen(widget.favoriteMeals), 'title': 'You Favorite'},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return

        //  DefaultTabController(
        //   initialIndex: 0,
        //   length: 2,
        Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
        // bottom: TabBar(tabs: <Widget>[
        //   Tab(
        //     icon: Icon(Icons.category),
        //     text: 'Categories',
        //   ),
        //   Tab(
        //     icon: Icon(Icons.star),
        //     text: 'Favories',
        //   ),
        // ]),
      ),

      drawer: MainDrawer(),

      body: _pages[_selectedPageIndex]['page'],

      // TabBarView(
      //   children: <Widget>[
      //     CategoriScreen(),
      //     FavoritesScreen(),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
