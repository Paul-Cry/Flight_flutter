import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 115, 254, 1),
      body: Container(

        margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new RotationTransition(
                turns: new AlwaysStoppedAnimation(45/ 360),
                child:  Icon(Icons.flight, color: Colors.white, size: 200),
              ),
              Column(
              children: [
                const SizedBox(
                  width: 350.0,
                  child: Text('Быстро и классно ищем билеты', style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ), textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Text('Дешёвые, удобные, без коммисии. Даже Если Вы не знаете, куда полететь - мы подскажем', style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),textAlign: TextAlign.center),

                ],
              ),
              SizedBox(
                width: double.infinity,
                // height: double.infinity,
                child:  ElevatedButton(onPressed: (){},

                    style:
                    ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.black12),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.transparent),

                          )
                      ),
                    ),
                    child:Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child:   Text('Далее', style:
                        TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)) )),


              )


            ],
          ),
        )
      ),
    );
  }
}

