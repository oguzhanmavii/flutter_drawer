import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drawer/screens/customer_screen.dart';
import 'package:flutter_drawer/screens/home.dart';
import 'package:flutter_drawer/screens/product_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: <String, WidgetBuilder>{
        // routing işlemlerini Mapping ile burada yapıyoruz böylelikle sayfalar arası geçiş daha kolay ve esnek bir hal alıyor
        CustomerScreen.routeName: (BuildContext context) => CustomerScreen(),
        ProductScreen.routeName: (BuildContext context) => ProductScreen(),
      },
    );
  }
}
