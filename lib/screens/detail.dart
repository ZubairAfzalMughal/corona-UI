import 'package:corona_virus_app/Widgets/weekly_chart.dart';
import 'package:corona_virus_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: kPrimaryColor,
            ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Covid-19'.toUpperCase(),
          style: TextStyle(color: kPrimaryColor),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SvgPicture.asset('assets/icons/map.svg'),
            SizedBox(
              height:10.0
            ),
            WeeklyChart(),
        ],
        ),
      ),
    );
  }
}
