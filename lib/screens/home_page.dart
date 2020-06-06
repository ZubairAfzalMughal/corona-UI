import 'package:corona_virus_app/Widgets/info.dart';
import 'package:corona_virus_app/Widgets/preventions.dart';
import 'package:corona_virus_app/screens/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(
        children: <Widget>[
          Container(
            //height: 250.0,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.03),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(17.0),
                  bottomRight: Radius.circular(17.0)),
            ),
            child: Wrap(
              runSpacing: 10.0,
              children: <Widget>[
                Info(
                  title: 'Total Cases',
                  iconColor: Color(0xFFFF9C00),
                  cases: 1000,
                ),
                Info(
                  title: 'new Cases',
                  cases: 50,
                  iconColor: Colors.yellow,
                ),
                Info(
                  title: 'Recovered',
                  cases: 50,
                  iconColor: kPrimaryColor,
                ),
                Info(
                  title: 'Death',
                  cases: 50,
                  iconColor: Colors.red,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Column(
            children: <Widget>[
              Text(
                'Prevention',
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 5.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Preventions(title: 'Hand Wash',svgPic: 'hand_wash',),
          Preventions(title: 'Face Mask',svgPic: 'use_mask',),
          Preventions(title: 'Disinfectance',svgPic: 'Clean_Disinfect',),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Detail();
            }));
          },
            child: Container(
            height: 100.0,
            margin: EdgeInsets.only(left:10.0,right: 10.0),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: <Widget>[
                Container(
                  height: 130.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF60BE90),
                        Color(0xFF1B8D59)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(17.0)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:10.0,vertical: 5.0),
                  child: SvgPicture.asset('assets/icons/nurse.svg'),),
              Positioned(
                top: 10.0,
                left: 120.0,
                bottom: 50.0,
                  child: Text(
                  "Dial 1188\nin cause of symptoms",
                  style: Theme.of(context).textTheme.title.copyWith(
                    color:Colors.white,
                    fontSize:15.0
                  ),
                ),
              ),
              Positioned(
                left: 230.0,
                bottom: 10.0,
                child: SvgPicture.asset('assets/icons/virus.svg'),
              ),
              ],
            ),
          ),
        ),
      ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Text('covid-19'.toUpperCase(),style: TextStyle(color: kPrimaryColor),),
      backgroundColor: kPrimaryColor.withOpacity(0.03),
      centerTitle: true,
      elevation: 0.0,
      leading: IconButton(
          onPressed: null, icon: SvgPicture.asset('assets/icons/menu.svg')),
      actions: <Widget>[
        IconButton(
          onPressed: null,
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
      ],
    );
  }
}

