import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';
import 'linear_chart.dart';

class Info extends StatelessWidget {
  final String title;
  final int cases;
  final Color iconColor;
  Info({this.title, this.cases, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrainst) {
        return Container(
          width: constrainst.maxWidth / 2 - 10,
          margin: EdgeInsets.only(left: 4.0,right: 5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          color: iconColor.withOpacity(0.12),
                          shape: BoxShape.circle),
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'assets/icons/running.svg',
                        height: 12.0,
                        width: 12.0,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                                     ),
                ],
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: kTextColor),
                        children: [
                          TextSpan(
                            text: '$cases \n',
                            style: Theme.of(context).textTheme.title.copyWith(
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                          ),
                          TextSpan(
                            text: 'People',
                            style: TextStyle(fontSize: 12.0, height: 2.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: LinearChart(),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
