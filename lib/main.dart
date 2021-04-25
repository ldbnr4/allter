import 'package:allter/view/screens/describe/describe_yourself.dart';
import 'package:allter/view/screens/gender/select_gender.dart';
import 'package:allter/view/screens/home/shop_by_category.dart';
import 'package:allter/view/screens/home/shopping_screen.dart';
import 'package:allter/view/screens/login/login_screen.dart';
import 'package:allter/view/screens/store/choose_store.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginScreen.id,
      routes: <String, WidgetBuilder>{
        LoginScreen.id: (BuildContext context) => LoginScreen(),
        SelectGender.id: (BuildContext context) => SelectGender(),
        DescribeYourself.id: (BuildContext context) => DescribeYourself(),
        ChooseStore.id: (BuildContext context) => ChooseStore(),
        ShopByCategory.id: (BuildContext context) => ShopByCategory(),
        ShoppingScreen.id: (BuildContext context) => ShoppingScreen(),
      },
    );
  }
}
