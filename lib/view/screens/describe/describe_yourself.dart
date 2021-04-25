import 'package:allter/view/screens/store/choose_store.dart';
import 'package:allter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DescribeYourself extends StatefulWidget {
  static final String id = '/select_gender';

  @override
  _DescribeYourselfState createState() => _DescribeYourselfState();
}

class _DescribeYourselfState extends State<DescribeYourself> {
  TextEditingController? _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

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
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
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
                    'HOW WOULD YOU DESCRIBE YOURSELF?',
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
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width * .7,
                  padding: EdgeInsets.all(10),
                  color: Color(0xffA0BDD9),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                      controller: _controller,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black87, width: 2))),
                      child: Center(
                        child: Text(
                          'FLATTER',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff5F8DB9),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black87, width: 2))),
                      child: Center(
                        child: Text(
                          "AVARAGE/I DON'T KNOW",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff5F8DB9),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black87, width: 2))),
                      child: Center(
                        child: Text(
                          'CURVY',
                          textAlign: TextAlign.center,
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
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ChooseStore()));
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
      ),
    );
  }
}
