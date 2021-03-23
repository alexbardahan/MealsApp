import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        //the first tab is selected by defaul. set 1 if you want the second tab to be selected when entering the app
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                title: Text('Meals'),
                centerTitle: true,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.category),
                      text: 'Categories ',
                    ),
                    Tab(
                      icon: Icon(Icons.star),
                      text: 'Favorites',
                    ),
                  ],
                )),
            body: TabBarView(
              children: [
                //we will add as many children as we have tabs(in this case 2)
                CategoriesScreen(),
                FavoritesScreen(),
              ],
            )));
  }
}
