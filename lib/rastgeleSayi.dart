import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'globals.dart' as globals;

class randomNumber extends ChangeNotifier {
  var RandomSayiList = [];
  late int myrandomnumber;
  int i = 0;
  int toplam = 0;
  var torba_sayisi;


  int sayisec() {
    if (i < globals.ToplamList.length) {
      var rng = new Random();
      myrandomnumber = rng.nextInt(90);
      RandomSayiList.add(myrandomnumber);
      i++;
      print(i);
      notifyListeners();
      print("sayi sec number: $myrandomnumber");
      return myrandomnumber;
    } else {
      notifyListeners();
      print("kotaya ulaşıldı");
      return 0;
    }
  }

  void dogruiseartir() {
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
}
