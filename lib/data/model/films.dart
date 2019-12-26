import 'package:flutter/foundation.dart';

class Films {
  final String id;
  final String title;
  final String imageUrl;
  final String trailer;
  final String description;
  final String amzonUrl;
  final String imdbUrl;

  const Films(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.trailer,
      @required this.description,
      @required this.amzonUrl,
      @required this.imdbUrl});
}
