import 'package:flutter/material.dart';
import 'package:flutter_first_project/navigations.dart';
import 'package:flutter_first_project/contacts.dart';

class Autch extends StatelessWidget {
  const Autch({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFFbbbbbb), width: 2
        )
    );

    const linkTextStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0));

    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);


    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Пицца"),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text("Контакты"),
                style: buttonStyle,),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings)),
            ],
          ),
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
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 60,),
                const SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/dart-logo.png'),),),
                SizedBox(height: 20,),
                const Text('Введите логин в виде 10 цифр\nномера телефона',
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),
                  textAlign: TextAlign.center,),

                SizedBox(height: 20,),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: '+7 (000) 123-45-67',
                  ),
                ),
                SizedBox(height: 20,),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Пароль',
                  ),
                ),
                SizedBox(height: 28,),
                SizedBox(width: 154, height: 42, child:
                ElevatedButton(onPressed: () {},
                  child: Text('Войти'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0079D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(36.0),
                      )
                  ),
                )
                ),
                SizedBox(height: 62,),
                InkWell(child: const Text('Регистрация', style: linkTextStyle,), onTap: () {},),
                SizedBox(height: 20,),
                InkWell(child: const Text('Забыли пароль', style: linkTextStyle,), onTap: () {},),
              ],
              ),
            ),
          )),
    );
  }
}