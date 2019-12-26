import 'package:flutter/material.dart';
import '../widget/film_card.dart';
import '../data/model/films_data.dart';

class MoviesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              itemCount: DUMMY_FILMS.length,
              itemBuilder: (ctx, i) => FilmCard(film: DUMMY_FILMS[i]),
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
