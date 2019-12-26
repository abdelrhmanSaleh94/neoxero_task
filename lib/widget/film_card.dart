import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neoxero_task/Theme/app_theme.dart';
import '../data/model/films.dart';
import '../screen/details_screen.dart';

class FilmCard extends StatelessWidget {
  final Films film;
  FilmCard({@required this.film});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailsScreen.routeName, arguments: film);
      },
      child: Hero(
        tag: film.id,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GridTile(
              child: GestureDetector(
                child: FadeInImage(
                  placeholder: AssetImage('assets/image/imgholdr-image.png'),
                  image: NetworkImage(film.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                title: Text(
                  film.title,
                  softWrap: true,
                  style: GoogleFonts.lato(),
                  maxLines: 2,
                ),
              ),
            )),
      ),
    );
  }
}
