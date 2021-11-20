import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_drawer/screens/customer_screen.dart';
import 'package:flutter_drawer/screens/product_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                exit(0);
              },
            )
          ],
          title: Text("Drawer Menu"),
        ),
        body: Container(
          child: Center(
            child: Text("Anasayfa"),
          ),
        ),
        drawer: buildDrawer(context));
  }

  Drawer createMenuItems(BuildContext context) {
    createNavigationItem(var icon, String page, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(page),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var navigationList = [
      createNavigationItem(
          Icons.account_box, "Customers", CustomerScreen.routeName),
      createNavigationItem(Icons.shop, "Products", ProductScreen.routeName),
      createNavigationItem(Icons.home, "Home", "/"),
    ];
    ListView menuItems = ListView(
      children: navigationList,
    );
    return Drawer(child: menuItems);
  }

  buildDrawer(BuildContext context) {
    return Drawer(
      child: createMenuItems(context),
    );
  }
}
