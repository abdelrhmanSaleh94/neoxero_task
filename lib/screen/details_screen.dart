import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Theme/app_theme.dart';
import '../data/model/films.dart';
import '../widget/bottom.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class DetailsScreen extends StatelessWidget {
  static final routeName = '/DetailsScreen';
  Films film;
  final Function toggelFavHandelerFun;
  final Function isFavFun;
  DetailsScreen(this.toggelFavHandelerFun, this.isFavFun);
  void _launchURL(String url) async {
    if (Platform.isIOS) {
      if (await canLaunch(url)) {
        await launch(url, forceSafariVC: false);
      } else {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch ' + url;
        }
      }
    } else {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    film = ModalRoute.of(context).settings.arguments;
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Hero(
          tag: film.id,
          child: Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(film.imageUrl),
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Card(
                          elevation: 50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              film.imageUrl,
                              fit: BoxFit.cover,
                              height: 250,
                              width: 150,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            ButtonDetials(
                              icon: FontAwesomeIcons.youtube,
                              colorIcon: Colors.redAccent,
                              title: 'Trailer',
                              onTap: () {
                                _launchURL(film.trailer);
                              },
                            ),
                            ButtonDetials(
                              icon: FontAwesomeIcons.imdb,
                              colorIcon: AppTheme.gold,
                              title: 'Imdb',
                              onTap: () => _launchURL(film.imdbUrl),
                            ),
                            film.amzonUrl != null
                                ? ButtonDetials(
                                    icon: FontAwesomeIcons.amazon,
                                    title: 'Amazon',
                                    colorIcon: AppTheme.gold,
                                    onTap: () => _launchURL(film.amzonUrl),
                                  )
                                : SizedBox()
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Text(
                              film.title,
                              style: GoogleFonts.lato(
                                  textStyle: AppTheme.display1),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              film.description,
                              style:
                                  GoogleFonts.lato(textStyle: AppTheme.title),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(
                isFavFun(film.id) ? Icons.favorite : Icons.favorite_border),
            onPressed: () => toggelFavHandelerFun(film.id)),
      ),
    );
  }
}
