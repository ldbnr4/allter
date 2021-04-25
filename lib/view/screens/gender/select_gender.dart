import 'package:allter/view/screens/describe/describe_yourself.dart';
import 'package:allter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SelectGender extends StatefulWidget {
  static final String id = '/describe_yourself';

  @override
  _SelectGenderState createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffCBDCEE),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 20),
          child: Widgets.appBar(
            text: '5 STEPS BEFORE YOU\n BEGIN SHOPPING',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'WHAT DO YOU IDENTIFY AS?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff5F8DB9),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width * .4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black87, width: 2))),
                    child: Center(
                      child: Text(
                        'FEMALE',
                        style: TextStyle(
                            color: Color(0xff5F8DB9),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width * .4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black87, width: 2))),
                    child: Center(
                      child: Text(
                        'MALE',
                        style: TextStyle(
                            color: Color(0xff5F8DB9),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width * .4,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(color: Colors.black87, width: 2))),
                child: Center(
                  child: Text(
                    'PREFER NOT TO SAY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff5F8DB9),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DescribeYourself()));
                },
                child: Widgets.commonBtn(
                    text: 'NEXT',
                    color: Colors.red,
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
