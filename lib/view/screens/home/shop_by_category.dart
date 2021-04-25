import 'package:allter/view/screens/home/shopping_screen.dart';
import 'package:allter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Category {
  final String url;
  final String title;
  Category(this.url, this.title);
}

class ShopByCategory extends StatefulWidget {
  static final String id = '/shop_by_category';

  @override
  _ShopByCategoryState createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
  TextEditingController? _controller;

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Category> categoriesList = [
    Category(
        'https://fontlot.com/wp-content/uploads/2020/07/Logo-Nike-Swoosh-1985.jpg',
        'WOMEN'),
    Category(
        'https://fontlot.com/wp-content/uploads/2020/07/Logo-Nike-Swoosh-1985.jpg',
        "MEN"),
    Category(
        'https://fontlot.com/wp-content/uploads/2020/07/Logo-Nike-Swoosh-1985.jpg',
        "KIDS & BABY"),
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
          preferredSize: const Size.fromHeight(kToolbarHeight + 60),
          child: Column(
            children: [
              Widgets.homeAppBar(
                text: 'ALLTER',
              ),
              Container(
                height: 40,
                color: Colors.black87,
                child: Center(
                    child: Text(
                  'DRIVEN BY SIZING BUILT AROUND YOU',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white),
                )),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Center(
                    child: Text(
                  'SHOP BY CATEGORY',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: 1.0,
                          padding: const EdgeInsets.all(4.0),
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                          shrinkWrap: true,
                          children: categoriesList.map((url) {
                            return GridTile(
                                child: Container(
                              color: Color(0xffECEDEE),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ShoppingScreen()));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.network(url.url.toString(),
                                        fit: BoxFit.fill),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      url.title.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ));
                          }).toList()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .35,
                      color: Color(0xffECEDEE),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
              ),
              label: 'Home',
              backgroundColor: Colors.black87,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
                size: 40,
              ),
              label: 'Business',
              backgroundColor: Colors.black87,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.circle,
                size: 40,
                color: Colors.lightBlueAccent,
              ),
              label: 'Business',
              backgroundColor: Colors.black87,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                size: 40,
              ),
              label: 'School',
              backgroundColor: Colors.black87,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 40,
              ),
              label: 'Settings',
              backgroundColor: Colors.black87,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
