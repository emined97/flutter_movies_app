import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/core/text_grey_small_bold.dart';
import 'package:flutter_movies_app/core/text_large_bold.dart';

class StackDesignHomePage extends StatelessWidget {
  const StackDesignHomePage({
    Key? key,
    required this.image,
    required this.text,
    required this.title,
  }) : super(key: key);

  final String image;
  final String text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: _imageHome(context),
          ),
          Positioned(
            top: 110,
            left: 70,
            child: ColumnHome(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: _containerIconDeleted(context),
          )
        ],
      ),
    );
  }

  Container _containerIconDeleted(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 10,
      height: MediaQuery.of(context).size.height / 22,
      decoration: BoxDecoration(
          color: MoviesConst.colorgrey,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))),
      child: Icon(
        Icons.delete_rounded,
        size: 30,
        color: Colors.blue,
      ),
    );
  }

  Column ColumnHome() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextLarge(
          text: text,
        ),
        TextGreySmall(
          text: MoviesConst.movie_context_two,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            TextGreySmall(
              text: title,
            )
          ],
        ),
      ],
    );
  }

  Image _imageHome(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.fill,
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width,
    );
  }
}
