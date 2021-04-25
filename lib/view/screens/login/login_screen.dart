import 'package:allter/view/screens/gender/select_gender.dart';
import 'package:allter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class LoginScreen extends StatefulWidget {
  static String id = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffAAC5E0),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 15.0,
                      animation: true,
                      percent: 0.8,
                      center: new Container(),
                      footer: SizedBox(
                        height: 10,
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.purple,
                    ),
                    Text(
                      'ALLTER',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  print('Login Button Tapped');
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SelectGender()));
                },
                child: Widgets.commonBtn(
                    text: "LOGIN",
                    color: Colors.white,
                    textStyle: TextStyle(
                        color: Color(0xff5F8DB9),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  print('SignUp Button Tapped');
                },
                child: Widgets.commonBtn(
                    text: "SIGN UP",
                    color: Colors.white,
                    textStyle: TextStyle(
                        color: Color(0xff5F8DB9),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
