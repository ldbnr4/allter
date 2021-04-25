import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Widgets {
  static Widget commonBtn({String? text, Color? color, TextStyle? textStyle}) {
    return Container(
      height: 50,
      color: color,
      child: Center(
        child: Text(
          text.toString(),
          style: textStyle,
        ),
      ),
    );
  }

  static Widget appBar({String? text}) {
    return AppBar(
      backgroundColor: Color(0xffECEDEE),
      centerTitle: true,
      title: Text(
        text.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(color: Color(0xff5F8DB9), fontWeight: FontWeight.w500),
      ),
      leading: Container(),
      toolbarHeight: kToolbarHeight + 20,
    );
  }

  static Widget homeAppBar({String? text}) {
    return AppBar(
      backgroundColor: Color(0xffECEDEE),
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          new CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 10.0,
            animation: true,
            percent: 0.8,
            center: new Container(),
            footer: SizedBox(
              height: 10,
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.purple,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          )
        ],
      ),
      leading: Icon(
        Icons.toc,
        size: 40,
        color: Colors.black87,
      ),
      actions: [
        Icon(
          Icons.search,
          size: 40,
          color: Colors.black87,
        ),
        Icon(
          Icons.face,
          size: 40,
          color: Colors.black87,
        ),
        Icon(
          Icons.shopping_bag_outlined,
          size: 40,
          color: Colors.black87,
        ),
        SizedBox(
          width: 10,
        ),
      ],
      toolbarHeight: kToolbarHeight + 20,
    );
  }
}
