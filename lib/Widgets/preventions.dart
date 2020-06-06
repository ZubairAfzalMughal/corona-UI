import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';
class Preventions extends StatelessWidget {
  final String svgPic;
  final String title;
  const Preventions({
    Key key,
    this.title,
    this.svgPic
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(
          'assets/icons/$svgPic.svg',
          height:70,
        ),
        Text(title,style: TextStyle(
          color: kPrimaryColor
        ),),
      ],
    );
  }
}
