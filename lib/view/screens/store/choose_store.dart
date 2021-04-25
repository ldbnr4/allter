import 'package:allter/view/screens/home/shop_by_category.dart';
import 'package:allter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChooseStore extends StatefulWidget {
  static final String id = '/choose_store';

  @override
  _ChooseStoreState createState() => _ChooseStoreState();
}

class _ChooseStoreState extends State<ChooseStore> {
  TextEditingController? _controller;

  List<String> storesList = <String>[
    'https://www.mycustomer.com/sites/default/files/styles/inline_banner/public/2000px-gap_logo.svg_.png?itok=bZz_wO6_',
    'https://static.dezeen.com/uploads/2019/02/new-zara-logo-col-2.jpg',
    'https://fontlot.com/wp-content/uploads/2020/07/Logo-Nike-Swoosh-1985.jpg',
    'https://cdn.britannica.com/94/193794-050-0FB7060D/Adidas-logo.jpg',
    'https://www.mycustomer.com/sites/default/files/styles/inline_banner/public/2000px-gap_logo.svg_.png?itok=bZz_wO6_',
    'https://static.dezeen.com/uploads/2019/02/new-zara-logo-col-2.jpg',
    'https://fontlot.com/wp-content/uploads/2020/07/Logo-Nike-Swoosh-1985.jpg',
    'https://cdn.britannica.com/94/193794-050-0FB7060D/Adidas-logo.jpg',
    'https://fontlot.com/wp-content/uploads/2020/07/Logo-Nike-Swoosh-1985.jpg',
  ];

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
                    'WHICH STORES DO YOU LIKE TO SHOP AT?',
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
                  color: Colors.white30,
                  child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 1.0,
                      padding: const EdgeInsets.all(4.0),
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                      shrinkWrap: true,
                      children: storesList.map((String? url) {
                        return GridTile(
                            child: Container(
                          padding: EdgeInsets.all(5),
                          child:
                              Image.network(url.toString(), fit: BoxFit.fill),
                        ));
                      }).toList()),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ShopByCategory()));
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
