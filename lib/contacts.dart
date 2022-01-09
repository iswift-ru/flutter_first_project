import 'package:flutter/material.dart';
import 'package:flutter_first_project/navigations.dart';
import 'package:flutter_first_project/pizza_theme_app.dart';
import 'package:flutter_first_project/themes/global_theme.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    var pizzaBar = PizzaAppBar();

    return MaterialApp(
      theme: globalTheme(),
      home: Scaffold(
          appBar: pizzaBar.appBar(context),
          drawer: navDrawer(context),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.6,
                )
            ),
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 60,),
                Text("Контакты",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: 60,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text.rich(
                      TextSpan(text: "Телефон:",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(text: " 8 800 999-77-88", style: TextStyle(fontWeight: FontWeight.bold)),
                          ]
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text.rich(
                      TextSpan(text: "Адрес:",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(text: " Санкт-Петербург, ул. Марата, д.9", style: TextStyle(fontWeight: FontWeight.bold)),
                          ]
                      )
                  ),
                ),
              ],
              ),
            ),
          )),
    );
  }
}
