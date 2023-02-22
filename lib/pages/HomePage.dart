import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodui/animations/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        brightness: Brightness.light,
        leading: Icon(null),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.grey[800],
              ))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                      1,
                      Text(
                        'Comidas',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FadeAnimation(
                            1, makeCategory(isActive: true, title: 'Pizza')),
                        FadeAnimation(1.1,
                            makeCategory(isActive: false, title: 'Petiscos')),
                        FadeAnimation(1.2,
                            makeCategory(isActive: false, title: 'A lá carne')),
                        FadeAnimation(1.3,
                            makeCategory(isActive: false, title: 'Pasteis')),
                        FadeAnimation(1.4,
                            makeCategory(isActive: false, title: 'Sugestão')),
                        FadeAnimation(1.5,
                            makeCategory(isActive: false, title: 'Bebidas')),
                        FadeAnimation(
                            1.6, makeCategory(isActive: false, title: 'Sucos')),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.0 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: isActive ? Colors.yellow[700] : Colors.white,
            borderRadius: BorderRadius.circular(50)),
        child: Align(
          child: Text(title,
              style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[500],
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.w100,
              )),
        ),
      ),
    );
  }
}
