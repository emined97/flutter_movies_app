import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/core/stack_design_home_bold.dart';
import 'package:flutter_movies_app/core/text_large_bold.dart';

class MoviesHome extends StatelessWidget {
  const MoviesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoviesConst.colorblack,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: MoviesConst.paddingHomeOnly,
            child: _rowIconText(),
          ),
          MoviesConst.sizedBoxHeight20,
          StackDesignHomePage(
              image: MoviesConst.deadpool_image,
              text: MoviesConst.deadpool_text,
              title: MoviesConst.puan_one),
          MoviesConst.sizedBoxHeight20,
          StackDesignHomePage(
              image: MoviesConst.maleficent_image,
              text: MoviesConst.maleficent_text,
              title: MoviesConst.puan_two),
          MoviesConst.sizedBoxHeight20,
          StackDesignHomePage(
              image: MoviesConst.wondar_woman,
              text: MoviesConst.wonderw_text,
              title: MoviesConst.puan_three),
          MoviesConst.sizedBoxHeight20,
          StackDesignHomePage(
              image: MoviesConst.deadpool_image,
              text: MoviesConst.deadpool_text,
              title: MoviesConst.puan_one),
        ]),
      ),
    );
  }

  Row _rowIconText() {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: MoviesConst.colorwhite,
              size: 30,
            )),
        MoviesConst.sizedBoxWidht100,
        TextLarge(
          text: MoviesConst.watch_list,
        ),
      ],
    );
  }
}
