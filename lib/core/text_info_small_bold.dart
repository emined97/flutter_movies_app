import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_movies_app/const/movies_const.dart';

class TextInfoSmall extends StatelessWidget {
  const TextInfoSmall({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(text ?? MoviesConst.stop,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: MoviesConst.colororange));
  }
}
