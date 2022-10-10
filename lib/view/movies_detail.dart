import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/core/container_image_actor_bold.dart';
import 'package:flutter_movies_app/core/elevated_button_bold.dart';
import 'package:flutter_movies_app/core/text_grey_small_bold.dart';
import 'package:flutter_movies_app/core/text_large_bold.dart';

class MoviesDetail extends StatelessWidget {
  const MoviesDetail({Key? key}) : super(key: key);

  final double _height = 2.5;
  final double _width = 1;
  final double _positionedBottom = 60;
  final double _positionedRight = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MoviesConst.colorblacktwo,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    MoviesConst.wondar_woman,
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / _height,
                    width: MediaQuery.of(context).size.width / _width,
                  ),
                  Positioned(
                    bottom: _positionedBottom,
                    right: _positionedRight,
                    child: _rowButtons(),
                  )
                ],
              ),
              MoviesConst.sizedBoxHeight20,
              Padding(
                padding: MoviesConst.paddingInfoOnlyTwo,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextLarge(
                      text: MoviesConst.maleficent_title,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: MoviesConst.coloramber,
                              size: 20,
                            ),
                            TextGreySmall(
                              text: MoviesConst.star_one,
                            ),
                          ],
                        ),
                        TextGreySmall(
                          text: MoviesConst.view_one,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              MoviesConst.sizedBoxHeight10,
              _contextText(),
              MoviesConst.sizedBoxHeight10,
              Padding(
                padding: MoviesConst.paddingInfoOnlyTwo,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _elevatedbuttonLike(),
                        MoviesConst.sizedBoxWidht10,
                        _elevatedbuttonComment(),
                        MoviesConst.sizedBoxWidht10,
                        _elevatedbuttonShare(),
                      ],
                    ),
                    MoviesConst.sizedBoxHeight20,
                    TextLarge(
                      text: MoviesConst.story_line,
                    ),
                    MoviesConst.sizedBoxHeight10,
                    TextGreySmall(
                      text: MoviesConst.sl_context,
                    ),
                    MoviesConst.sizedBoxHeight20,
                    TextLarge(
                      text: MoviesConst.actor_text,
                    ),
                    MoviesConst.sizedBoxHeight20,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ContainerImageActor(image: MoviesConst.ww_one),
                          MoviesConst.sizedBoxWidht10,
                          ContainerImageActor(image: MoviesConst.ww_two),
                          MoviesConst.sizedBoxWidht10,
                          ContainerImageActor(image: MoviesConst.ww_thre),
                          MoviesConst.sizedBoxWidht10,
                          ContainerImageActor(image: MoviesConst.ww_four),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  ElevatedButtonDetails _elevatedbuttonShare() {
    return ElevatedButtonDetails(
        text: MoviesConst.ele_share,
        primary: MoviesConst.colororange,
        icon: Icons.share,
        color: MoviesConst.colorwhite,
        colorone: MoviesConst.colorwhite);
  }

  ElevatedButtonDetails _elevatedbuttonComment() {
    return ElevatedButtonDetails(
        text: MoviesConst.ele_comment,
        primary: MoviesConst.colororange,
        icon: Icons.comment_rounded,
        color: MoviesConst.colorwhite,
        colorone: MoviesConst.colorwhite);
  }

  ElevatedButtonDetails _elevatedbuttonLike() {
    return ElevatedButtonDetails(
        text: MoviesConst.ele_like,
        primary: MoviesConst.colororange,
        icon: Icons.thumb_up_alt,
        color: MoviesConst.coloramber,
        colorone: MoviesConst.colorwhite);
  }

  Padding _contextText() {
    return Padding(
      padding: const EdgeInsets.only(right: 150),
      child: TextGreySmall(
        text: MoviesConst.movie_context_two,
      ),
    );
  }

  Row _rowButtons() {
    return Row(
      children: [
        ElevatedButtonDetails(
            text: MoviesConst.ele_whatch,
            primary: MoviesConst.colororange,
            icon: Icons.play_circle,
            color: MoviesConst.colorwhite,
            colorone: MoviesConst.colorwhite),
        MoviesConst.sizedBoxWidht10,
        ElevatedButtonDetails(
            text: MoviesConst.ele_whatchlist,
            primary: MoviesConst.colorwhite,
            icon: Icons.bookmark_border,
            color: MoviesConst.colororange,
            colorone: MoviesConst.colororange),
      ],
    );
  }
}
