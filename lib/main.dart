import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: UserPanel(),
  ));
}

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Container(
            child: IconButton(
              icon: const Icon(
                Icons.airplanemode_active,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
            margin: const EdgeInsets.only(left: 20)),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/backg.jpg'), fit: BoxFit.cover, )
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text('ВЫБИРАЙ ЛУЧШЕЕ И', style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                    const Text('ЛЕТАЙ ВМЕСТЕ',style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold), ),
                    const Text('С FLIGHTPOOL',style: TextStyle(fontSize: 40, color: Colors.white , fontWeight: FontWeight.bold),),
                    const Padding(padding: EdgeInsets.only(top: 30)),
                  ],
                )
                ,
              ),
              Center(
                child: OutlinedButton(
                    onPressed: (){},

                    style:  OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(20),
                      side: const BorderSide(width: 2, color: Colors.white),
                    ),
                    child:

                    const Text('Поиск авиабилетов', style: TextStyle(color: Colors.white, fontSize: 20),)
                ),
              )

          ],
          ),
        ),


      ),
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const Padding(padding: EdgeInsets.only(top: 40)),
            ListTile(
              title: const Text('Личный кабинет'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Регистрация на рейс'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Поиск'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Акции'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.ac_unit, size: 20, color: Colors.white),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
