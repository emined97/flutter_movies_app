import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';

class TextGreySmall extends StatelessWidget {
  const TextGreySmall({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(text ?? MoviesConst.stop,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 224, 219, 219)));
  }
}
