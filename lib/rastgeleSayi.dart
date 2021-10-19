
import 'dart:math';
import 'package:flutter/cupertino.dart';

class randomNumber extends ChangeNotifier{
  int myrandomnumber = 6;
  var RandomSayiList = [];

  void sayisec() {
    var rng7 = new Random();
    var sayisecnumber = rng7.nextInt(90);
    print("sayi sec number: $sayisecnumber");
    RandomSayiList.add(sayisecnumber);
    notifyListeners();
  }
}