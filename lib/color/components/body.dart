import 'dart:math';
import 'package:flutter/material.dart';
import '../../size_config.dart';

class Body extends StatefulWidget {


  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var textArray = ['Hey there', 'Привіт', 'Ehilà', 'Salut']; // Масив слів для
  Color backColor = Colors.white;
  double textSize;
  int i = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(// Віджет реагує на натискання по контейнеру який він огортає
      onTap: (){
        setState(() {
          i++;
          final randomcol = Random();
          textSize = 50 - randomcol.nextInt(80 - 50).toDouble();
          backColor = Color.fromRGBO( // Беремо рандомні значеня для кольору з заданого діапазону
            randomcol.nextInt(256),
            randomcol.nextInt(256),
            randomcol.nextInt(256),
            1,
          );
        });
        if(i % 5 == 0){
          index ++;
          if( index == textArray.length){
            index = 0;
          }
        }
      },
      child: new Container(
        color: backColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(textArray[index], // Виведення тексту з масиву
                style: TextStyle(
                    fontSize: textSize,
                ),),
              Text('$i', // Текст лічильника
                style: TextStyle(
                  fontSize: textSize,
                ),),
              Spacer(),
              new Align(alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, right: 20),
                  child: FloatingActionButton( // Кнопка яка обнулює лічильник
                      backgroundColor: Color(0xff69757D),
                      child: new Icon(
                        Icons.wifi_protected_setup,
                        size: getProportionateScreenWidth(30), //
                      ),
                      onPressed: (){
                        setState(() {
                          i = 0;
                        });

                      }),
                ),)
            ],
          ),
        ),

      ),
    );

  }
}
