import 'package:flutter/material.dart';
import 'package:flutter_first_project/pizza_theme_app.dart';
import 'package:flutter_first_project/contacts.dart';
import 'package:flutter_first_project/themes/global_theme.dart';

final _messengerKey = GlobalKey<ScaffoldMessengerState>();


class PizzaAppBar {
  PreferredSizeWidget appBar(context) => AppBar(
        title: Text("Пицца"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/contacts');
            },
            child: Text("Контакты",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              icon: Icon(Icons.settings)),
        ],
      );
}

Widget navDrawer(context) => Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(color: Colors.white),
          child: Container(
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        opacity: 0.8,
                        image: AssetImage("assets/images/pizza.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("Доставка пиццы",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
      ListTile(
        leading: const Icon(Icons.menu_book_outlined),
        title: const Text("Каталог"),
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
      ),
      ListTile(
        leading: const Icon(Icons.bookmark_border_sharp),
        title: const Text("Заказы",),
        onTap: () {
          Navigator.pushNamed(context, '/orders');
        },
      ),
      ListTile(
        leading: const Icon(Icons.quick_contacts_dialer_outlined),
        title: const Text("Контакты"),
        onTap: () {
          Navigator.pushNamed(context, '/contacts');
        },
      ),
      const Divider(),
      const Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Align(
          alignment: Alignment.topRight,
          child: Text(
            "Профиль",
            style: TextStyle(color: Colors.blueGrey, fontSize: 12),
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text("Настройки"),
        onTap: () {
          Navigator.pushNamed(context, '/settings');
        },
      ),
    ],
  ),
);