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
        preferredSize: Size.fromHeight(110),
        child: Container(
          height: 110,
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
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/telaDeFundo.jpg'),
                      fit: BoxFit.cover
                    )
                    //child: Image.asset('images/telaDeFundo.jpg', fit: BoxFit.,)
                  ),
                ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 25),
                      child: Text("Faça o melhor que puder. Seja o melhor que puder. O resultado virá na mesma proporção de seu esforço.",
                      textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                      child: TextButton(onPressed: (){},
                       child: Container(
                         height: 30,
                         width: 150,
                         decoration: BoxDecoration(
                           color: Color.fromRGBO(0xFFFFFFF, 0xFFFFFFF, 0xFFFFFFF, 0.3),
                           borderRadius: BorderRadius.circular(50)
                         ),
                         child: Text("Mensagen",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                            ), 
                            textAlign: TextAlign.center,
                          ),
                       )),
                    )
                  ],
                )
              ],
            ),)
        ],
      ),
    );
  }
}
