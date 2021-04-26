import 'package:allter/view/screens/gender/select_gender.dart';
import 'package:allter/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SignupScreen extends StatefulWidget {
  static String id = '/signup';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffAAC5E0),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 1.5,
                alignment: AlignmentDirectional.center,
                color: Colors.white,
                child: Text(
                  'ALLTER',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      // labelText: 'Enter Name Here',
                      hintText: 'EMAIL ADDRESS',
                      hintStyle: TextStyle(
                          color: Color(0xff5F8DB9), fontWeight: FontWeight.bold),
                      contentPadding: EdgeInsets.only(left: 10)),
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.white,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      // labelText: 'Enter Name Here',
                      hintStyle: TextStyle(
                          color: Color(0xff5F8DB9), fontWeight: FontWeight.bold),
                      hintText: 'PASSWORD',
                      contentPadding: EdgeInsets.only(left: 10)),
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {
                  print('Login Button Tapped');
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => SelectGender()));
                },
                child: Widgets.commonBtn(
                    text: "SIGN IN WITH EMAIL",
                    color: Colors.red,
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  color: Colors.black,
                  thickness: 2,
                )),
                SizedBox(
                  width: 30,
                ),
                Text("OR",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Divider(
                  color: Colors.black,
                  thickness: 2,
                )),
              ]),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  print('Login Button Tapped');
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => SelectGender()));
                },
                child: Widgets.commonBtn(
                    text: "SIGN IN WITH FACEBOOK",
                    color: Colors.blueGrey.shade600,
                    textStyle: TextStyle(color: Colors.white, fontSize: 17)),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  print('SignUp Button Tapped');
                },
                child: Widgets.commonBtn(
                    text: "SIGN IN WITH GOOGLE",
                    color: Colors.blueAccent,
                    textStyle: TextStyle(color: Colors.white, fontSize: 17)),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  print('Login Button Tapped');
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => SelectGender()));
                },
                child: Widgets.commonBtn(
                    text: "SIGN IN WITH APPLE",
                    color: Colors.black,
                    textStyle: TextStyle(color: Colors.white, fontSize: 17)),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class Drawhorizontalline extends CustomPainter {
  Paint _paint = Paint()
    ..color = Colors.black
    ..strokeWidth = 1
    ..strokeCap = StrokeCap.round;
  Drawhorizontalline();
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(-90.0, 0.0), Offset(90.0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
