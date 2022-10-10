import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';

class TextLarge extends StatelessWidget {
  const TextLarge({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? MoviesConst.stop,
      style: Theme.of(context).textTheme.headline5?.copyWith(
          fontWeight: FontWeight.bold,
          color: MoviesConst.colorwhite,
          fontSize: 20),
    );
  }
}
