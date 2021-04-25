import 'package:allter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Category {
  final String url;
  final String title;
  Category(this.url, this.title);
}

class ShoppingScreen extends StatefulWidget {
  static final String id = '/shopping_screen';

  @override
  _ShoppingScreenState createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
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
        'https://cdn.shopify.com/s/files/1/2059/2623/products/Nadafair-New-Strap-Ruffles-Mini-Summer-Dress-Women-Red-Black-White-Elegant-Slim-Dress-Sexy-Backless_18c10001-1bd1-4d58-94a5-c6d9fb2a7e1e_1024x1024.jpg?v=1566688225',
        "\$26.00 \tSAGE CO ORD SHORTS"),
    Category(
        'https://cdn.shopify.com/s/files/1/2059/2623/products/ICHOIX-women-clothes-2018-fashion-autumn-winter-dress-sexy-party-dress-elegant-tube-long-sleeve-ladies_eab01cd4-d35e-4476-9d67-9d7e7feb0107_800x.jpg?v=1539375263',
        "\$26.00 \tSAGE CO ORD SHORTS"),
    Category(
        'https://cdn.shopify.com/s/files/1/2059/2623/products/ICHOIX-women-clothes-2018-fashion-autumn-winter-dress-sexy-party-dress-elegant-tube-long-sleeve-ladies_eab01cd4-d35e-4476-9d67-9d7e7feb0107_800x.jpg?v=1539375263',
        "\$23.00 \tWHITE FAUZ LEATHER"),
    Category(
        'https://cdn.shopify.com/s/files/1/2059/2623/products/Nadafair-New-Strap-Ruffles-Mini-Summer-Dress-Women-Red-Black-White-Elegant-Slim-Dress-Sexy-Backless_18c10001-1bd1-4d58-94a5-c6d9fb2a7e1e_1024x1024.jpg?v=1566688225',
        "\$26.00 \tSAGE CO ORD SHORTS"),
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
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 180) / 2;
    final double itemWidth = size.width / 2;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffCBDCEE),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 20),
          child: Widgets.homeAppBar(
            text: 'ALLTER',
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/miss.png',
                  fit: BoxFit.fill,
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                ),
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
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          // childAspectRatio: 1.0,
                          padding: const EdgeInsets.all(4.0),
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                          shrinkWrap: true,
                          childAspectRatio: (itemWidth / itemHeight),
                          children: categoriesList.map((url) {
                            return GridTile(
                                child: Container(
                              color: Color(0xffECEDEE),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Image.network(url.url.toString(),
                                          fit: BoxFit.fill),
                                      Positioned(
                                          right: 5,
                                          top: 5,
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: Colors.black87,
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                        url.title.toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ));
                          }).toList()),
                    ),
                    SizedBox(
                      height: 20,
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
