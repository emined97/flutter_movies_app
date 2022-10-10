import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';

class ContainerImageActor extends StatelessWidget {
  const ContainerImageActor({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  final double _heightC = 11;
  final double _widthC = 4.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _heightC,
      width: MediaQuery.of(context).size.width / _widthC,
      decoration: BoxDecoration(
          borderRadius: MoviesConst.borderRadiusCircular20,
          color: MoviesConst.colorgrey),
      child: ClipRRect(
        borderRadius: MoviesConst.borderRadiusCircular20,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
