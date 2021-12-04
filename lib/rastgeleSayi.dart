import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'globals.dart' as globals;

class randomNumber extends ChangeNotifier {
  var RandomSayiList = [];
  var lengtofRandomSayiList = 0;
  int toplam = 0;
  var torba_sayisi;
  var toplamCekilenSayi = 0;
  int myrandomnumber = 0;
  var BilinenSayilar = [];


  int sayisec() {
    if (globals.i <70) {
      var rng = new Random();
      myrandomnumber = rng.nextInt(90);
      while(RandomSayiList.contains(myrandomnumber)){
        var rng = new Random();
        myrandomnumber = rng.nextInt(90);
      }
      RandomSayiList.add(myrandomnumber);
      myrandomnumber;
      notifyListeners();
      lengtofRandomSayiList = RandomSayiList.length;
      notifyListeners();
      print(globals.i);
      globals.i++;
      notifyListeners();
      print("sayi sec number: ${myrandomnumber}");
      return myrandomnumber;
    }
    else{
      return globals.i;
    }
  }

  void dogruiseartir() {
    if (globals.i < 70) {
      torba_sayisi = sayisec();
      print(torba_sayisi);
      print(globals.ToplamList);
      if (globals.ToplamList.contains(torba_sayisi)) {
        print("Biletinizde çekilen numara vardır");
        BilinenSayilar.add(torba_sayisi);
        notifyListeners();
        toplam++;
        notifyListeners();
      } else {
        print("Biletinizde çekilen numara yoktur");
      }
    }
    else{
      print("globals.i 70den büyüktür.");
    }
  }
}
