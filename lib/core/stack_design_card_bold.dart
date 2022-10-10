import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/core/text_grey_small_bold.dart';
import 'package:flutter_movies_app/core/text_large_bold.dart';

class StackDesignCardOne extends StatelessWidget {
  const StackDesignCardOne({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _cliprrectImage(),
        _headText(),
        RowPositionedTime(),
        RowStarText(),
        RowContainerIcon(),
      ],
    );
  }

  Positioned _headText() {
    return Positioned(
      top: 50,
      left: 20,
      child: TextLarge(
        text: text,
      ),
    );
  }

  RowClipRRectImage _cliprrectImage() {
    return RowClipRRectImage(
      image: image,
    );
  }
}

class RowClipRRectImage extends StatelessWidget {
  const RowClipRRectImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: MoviesConst.borderRadiusCircular20,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height / 6.5,
        width: MediaQuery.of(context).size.width / 1.7,
      ),
    );
  }
}

class RowPositionedTime extends StatelessWidget {
  const RowPositionedTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 20,
      child: TextGreySmall(
        text: MoviesConst.movie_context_one,
      ),
    );
  }
}

class RowStarText extends StatelessWidget {
  const RowStarText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: 15,
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.amber,
            size: 20,
          ),
          TextGreySmall(
            text: MoviesConst.star_one,
          ),
          MoviesConst.sizedBoxWidht10,
          TextGreySmall(
            text: MoviesConst.view_one,
          )
        ],
      ),
    );
  }
}

class RowContainerIcon extends StatelessWidget {
  const RowContainerIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 77,
      left: 180,
      child: Container(
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
      ),
    );
  }
}
