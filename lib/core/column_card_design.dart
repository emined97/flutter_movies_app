import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/core/text_grey_small_bold.dart';
import 'package:flutter_movies_app/core/text_large_bold.dart';

class ColumnCardDesign extends StatelessWidget {
  const ColumnCardDesign({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: MoviesConst.borderRadiusCircular20,
      child: Stack(
        children: [
          _imageHeightWidth(context),
          Positioned(
            top: 155,
            left: 30,
            child: _columnTexts(),
          ),
          Positioned(
            bottom: 25,
            right: 10,
            child: _containerIcon(context),
          ),
        ],
      ),
    );
  }

  Container _containerIcon(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 10,
      decoration: BoxDecoration(
        borderRadius: MoviesConst.borderRadiusCircular40,
        color: Colors.orange,
      ),
      child: Icon(
        Icons.play_circle_outline,
        color: Colors.white,
      ),
    );
  }

  Column _columnTexts() {
    return Column(
      children: [
        TextLarge(
          text: text,
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            TextGreySmall(
              text: MoviesConst.star_one,
            ),
          ],
        ),
      ],
    );
  }

  Image _imageHeightWidth(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 1.8,
    );
  }
}
