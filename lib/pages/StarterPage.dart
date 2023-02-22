import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodui/animations/FadeAnimation.dart';

class StartPage extends StatefulWidget {
  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/starter-image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ],
          )),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeAnimation(
                    .7,
                    Text(
                      'Recebendo pedido para entrega',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                    .1,
                    Text(
                      "Veja os restaurantes próximos \nadicionando a localização",
                      style: TextStyle(
                          color: Colors.white, height: 1.4, fontSize: 18),
                    )),
                const SizedBox(
                  height: 100,
                ),
                FadeAnimation(
                    1.2,
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                              colors: [Colors.yellow, Colors.orange])),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: Text(
                          "Entre",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    1.4,
                    Align(
                      child: Text(
                        "Entregue à sua porta 24 horas por dia, 7 dias por semana",
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
