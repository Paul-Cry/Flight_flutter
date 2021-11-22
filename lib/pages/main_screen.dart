import 'package:flutter/material.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  late DateTime _dateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: const Color.fromRGBO(12, 115, 254, 1),
                  height: 400,
                  child: Column(
                    children: [
                      Padding( padding: EdgeInsets.only(top: 30)),
                      const SizedBox(
                          width: 200,
                          child: Text('Поиск дешёвых авибилетов', style: TextStyle(
                              fontSize: 25,
                              color: Colors.white
                          ), textAlign: TextAlign.center,)
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),

                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child:
                        Column(
                          children: [
                            TextField(
                              obscureText: false,
                              decoration: new InputDecoration.collapsed(
                                  hintText: 'Откуда - Екатеринбург'
                              ),
                            ),
                            Padding( padding: EdgeInsets.only(top: 20)),
                            Divider(
                              color: Colors.grey,
                              height: 10,
                            ),
                            Padding( padding: EdgeInsets.only(top: 20)),
                            TextField(
                              obscureText: false,
                              decoration: new InputDecoration.collapsed(
                                  hintText: 'Куда- Сочи'
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [

                        ],
                      )


                    ],
                  )
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text('Короче о городах ')
                  ],
                ),
              )

            ],
          ),
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.flight),
          label: 'Авиабилеты',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Аккаунт',
          backgroundColor: Colors.red,
        ),

      ],
      )

    );
  }
}

