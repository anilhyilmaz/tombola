import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tombala/TombalaScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    random_function();

  }
  var gonderilecek_sayi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(25),
              width: 140,
              child: FlatButton(
                child: Text('Başlat', style: TextStyle(fontSize: 20.0),),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TombalaScreen(secilen_sayi: gonderilecek_sayi,)));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              width: 140,
              child: FlatButton(
                child: Text('Çıkış', style: TextStyle(fontSize: 20.0),),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
  int random_function() {
    var p;
    var rng3 = new Random();
    p = rng3.nextInt(2);
    gonderilecek_sayi = p;
    print("secilen sayi  : $gonderilecek_sayi");
    return gonderilecek_sayi;
  }
}

