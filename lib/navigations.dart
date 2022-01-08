import 'package:flutter/material.dart';
import 'package:flutter_first_project/autch.dart';
import 'package:flutter_first_project/contacts.dart';

class Navigations extends StatefulWidget {
  const Navigations({Key? key}) : super(key: key);

  @override
  _NavigationsState createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const MainScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Autch(),
        '/contacts': (context) => const Contacts(),
      },
    );
  }
}

final _messengerKey = GlobalKey<ScaffoldMessengerState>();

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
        title: const Text("Заказы"),
        onTap: () {
          _messengerKey.currentState!.showSnackBar(
              const SnackBar(content: Text("Переход в Заказы")));
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
          _messengerKey.currentState!.showSnackBar(
              const SnackBar(content: Text("Переход в Настройки")));
        },
      ),
    ],
  ),
);