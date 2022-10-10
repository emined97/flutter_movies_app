import 'package:flutter/material.dart';

import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/core/column_card_design.dart';
import 'package:flutter_movies_app/core/stack_design_card_bold.dart';

import 'package:flutter_movies_app/core/text_info_one_bold.dart';
import 'package:flutter_movies_app/core/text_info_small_bold.dart';

class MoviesInfoTwo extends StatefulWidget {
  const MoviesInfoTwo({Key? key}) : super(key: key);

  final double _fontsize = 20;

  @override
  State<MoviesInfoTwo> createState() => _MoviesInfoTwoState();
}

class _MoviesInfoTwoState extends State<MoviesInfoTwo>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  static const List<Tab> _tabBar = [
    Tab(
      child: Text(
        MoviesConst.c_action,
        style: TextStyle(fontSize: 20),
      ),
    ),
    Tab(
      child: Text(
        MoviesConst.c_horror,
        style: TextStyle(fontSize: 20),
      ),
    ),
    Tab(
      child: Text(
        MoviesConst.c_comedy,
        style: TextStyle(fontSize: 20),
      ),
    ),
    Tab(
      child: Text(
        MoviesConst.c_romantic,
        style: TextStyle(fontSize: 20),
      ),
    ),
    Tab(
      child: Text(
        MoviesConst.c_thriller,
        style: TextStyle(fontSize: 20),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBar.length, vsync: this);
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBar.length,
      child: Scaffold(
          backgroundColor: MoviesConst.colorblackthre,
          body: Padding(
            padding: MoviesConst.paddingInfoOnly,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _rowApbarMenu(),
                      _rowAppbarText(context),
                      Container(
                        height: MediaQuery.of(context).size.height / 17,
                        width: MediaQuery.of(context).size.width / 8,
                        decoration: BoxDecoration(
                            borderRadius: MoviesConst.borderRadiusCircular40,
                            color: MoviesConst.colorgrey),
                        child: Padding(
                          padding: MoviesConst.paddingGeneral5,
                          child: Image.asset(
                            MoviesConst.user_image,
                          ),
                        ),
                      ),
                    ],
                  ),
                  _textFieldStyle(),
                  MoviesConst.sizedBoxHeight20,
                  TabBar(
                    tabs: _tabBar,
                    controller: _tabController,
                    labelColor: MoviesConst.colorblack,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    indicator: BoxDecoration(
                        borderRadius: MoviesConst.borderRadiusCircular40,
                        color: MoviesConst.colororange),
                  ),
                  MoviesConst.sizedBoxHeight20,
                  _rowTwoText(),
                  MoviesConst.sizedBoxHeight20,
                  Padding(
                    padding: MoviesConst.paddingInfoOnlyTwo,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: _rowTwoMovies(),
                    ),
                  ),
                  MoviesConst.sizedBoxHeight20,
                  _rowThreeText(),
                  MoviesConst.sizedBoxHeight20,
                  Padding(
                    padding: MoviesConst.paddingInfoOnlyTwo,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ColumnCardDesign(
                              image: MoviesConst.radhe_image,
                              text: MoviesConst.radhe_text),
                          MoviesConst.sizedBoxWidht10,
                          ColumnCardDesign(
                              image: MoviesConst.action_image,
                              text: MoviesConst.c_action)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Padding _rowThreeText() {
    return Padding(
      padding: MoviesConst.paddingInfoOnlyTwo,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextInfoOne(
            text: MoviesConst.bollywood_a,
          ),
          TextInfoSmall(
            text: MoviesConst.see_more,
          ),
        ],
      ),
    );
  }

  Row _rowTwoMovies() {
    return Row(
      children: [
        StackDesignCardOne(
            image: MoviesConst.enders_image, text: MoviesConst.movie_name_one),
        MoviesConst.sizedBoxWidht10,
        StackDesignCardOne(
            image: MoviesConst.warbox_image, text: MoviesConst.warbox_text),
        MoviesConst.sizedBoxWidht10,
      ],
    );
  }

  Padding _rowTwoText() {
    return Padding(
      padding: MoviesConst.paddingInfoOnlyTwo,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextInfoOne(
            text: MoviesConst.hollywood_a,
          ),
          TextInfoSmall(
            text: MoviesConst.see_more,
          ),
        ],
      ),
    );
  }

  Padding _textFieldStyle() {
    return Padding(
      padding: MoviesConst.paddingInfoOnlyThre,
      child: TextField(
        cursorColor: (MoviesConst.colorgrey),
        decoration: InputDecoration(
          filled: true,
          fillColor: MoviesConst.colorgrey,
          border: OutlineInputBorder(
            borderRadius: MoviesConst.borderRadiusCircular20,
          ),
          prefixIcon: Icon(
            Icons.search_outlined,
            size: 30,
          ),
          hintText: MoviesConst.textfield_info,
        ),
      ),
    );
  }

  Row _rowApbarMenu() {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 30,
              color: MoviesConst.colorwhite,
            )),
      ],
    );
  }

  Row _rowAppbarText(BuildContext context) {
    return Row(
      children: [
        Text(MoviesConst.apbar_textone,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: MoviesConst.colorblue)),
        Text(MoviesConst.apbar_texttwo,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: MoviesConst.colororangetwo)),
      ],
    );
  }
}
