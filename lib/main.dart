import 'package:flutter/material.dart';
import './data/model/films.dart';
import './data/model/films_data.dart';
import './screen/splacsh_screen.dart';
import './widget/bottom_nav_bar.dart';
import './screen/details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

List<Films> _favoirtFilms = [];

class _MyAppState extends State<MyApp> {
  void _toggleFavorite(String filmId) {
    final existeindIndex =
        _favoirtFilms.indexWhere((film) => film.id == filmId);
    if (existeindIndex >= 0) {
      setState(() {
        _favoirtFilms.removeAt(existeindIndex);
      });
    } else {
      setState(() {
        _favoirtFilms.add(DUMMY_FILMS.firstWhere((film) => film.id == filmId));
      });
    }
  }

  bool _isFavoritFilm(String id) {
    return _favoirtFilms.any((film) => film.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neoxero Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        BottomNavScreen.routeName: (ctx) => BottomNavScreen(_favoirtFilms),
        DetailsScreen.routeName: (ctx) =>
            DetailsScreen(_toggleFavorite, _isFavoritFilm),
      },
    );
  }
}
