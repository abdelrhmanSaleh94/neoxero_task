import 'package:flutter/material.dart';
import '../data/model/films.dart';
import '../widget/film_card.dart';

class Favorites extends StatelessWidget {
  final List<Films> favoirtFilms;
  Favorites(this.favoirtFilms);
  @override
  Widget build(BuildContext context) {
    if (favoirtFilms.isEmpty) {
      return Container(
        child: Center(child: Text('No Favorit Yet Add Some Films')),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          body: Container(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
              child: GridView.builder(
                padding: EdgeInsets.all(10),
                itemCount: favoirtFilms.length,
                itemBuilder: (ctx, i) => FilmCard(film: favoirtFilms[i]),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (150 / 300),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
              )),
        ),
      );
    }
  }
}
