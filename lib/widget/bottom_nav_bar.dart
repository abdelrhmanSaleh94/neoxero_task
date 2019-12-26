import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screen/favorites_screen.dart';
import '../screen/movies_screen.dart';
import '../Theme/app_theme.dart';
import '../data/model/films.dart';

class BottomNavScreen extends StatefulWidget {
  static const String routeName = '/BottomNavScreen';
  List<Films> favroitFilms;

  BottomNavScreen(this.favroitFilms);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Map<String, Object>> _pages = [];
  int _selectedIndex = 0;
  @override
  void initState() {
    _pages = [
      {'page': MoviesScreen(), 'title': 'Movies'},
      {'page': Favorites(widget.favroitFilms), 'title': 'Favorite'}
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void _selectedPage(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppTheme.nearlyWhite,
          onTap: _selectedPage,
          unselectedItemColor: AppTheme.grey,
          selectedItemColor: AppTheme.gold,
          selectedFontSize: 16,
          unselectedFontSize: 12,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.film),
              title: Text('Movies'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.star),
              title: Text('Favorites'),
            ),
          ]),
    );
  }
}
