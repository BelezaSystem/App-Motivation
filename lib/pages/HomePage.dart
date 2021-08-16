import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Container(
          height: 130,
          color: Colors.black12,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                    text: "Olá, ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.orange,
                    ),
                    children: [
                      TextSpan(
                        text: "Seja bem vindo ao nosso App",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.orange,
                        ),
                      )
                    ]),
              ),
              subtitle: Text(
                "Matenha-se sempre motivado!",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange,
                ),
              ),
              trailing: Container(
                height: 58,
                width: 58,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('images/logoMiniApp.png'),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
