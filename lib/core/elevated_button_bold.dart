import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';

class ElevatedButtonDetails extends StatelessWidget {
  const ElevatedButtonDetails({
    Key? key,
    required this.text,
    required this.primary,
    required this.icon,
    required this.color,
    required this.colorone,
  }) : super(key: key);

  final String text;
  final Color primary;
  final IconData icon;
  final Color color;
  final Color colorone;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(primary: primary),
        onPressed: () {},
        icon: Icon(
          icon,
          color: color,
        ),
        label: Text(
          text,
          style: TextStyle(color: colorone),
        ));
  }
}
