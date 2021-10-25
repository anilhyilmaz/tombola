import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'globals.dart' as globals;

class randomNumber extends ChangeNotifier {
  var RandomSayiList = [];
  late int myrandomnumber;
  int toplam = 0;
  var torba_sayisi;


  int sayisec() {
    if (globals.i <50) {
      var rng = new Random();
      myrandomnumber = rng.nextInt(90);
      RandomSayiList.add(myrandomnumber);
      print(globals.i);
      globals.i++;
      notifyListeners();
      print("sayi sec number: $myrandomnumber");
      return myrandomnumber;
    }
    else{
      return globals.i;
    }
  }

  void dogruiseartir() {
    if (globals.i < 50) {
      torba_sayisi = sayisec();
      print(torba_sayisi);
      print(globals.ToplamList);
      if (globals.ToplamList.contains(torba_sayisi)) {
        print("Biletinizde çekilen numara vardır");
        toplam++;
        notifyListeners();
      } else {
        print("Biletinizde çekilen numara yoktur");
      }
    }
    else{
      print("globals.i 50den büyüktür.");
    }
  }
}
