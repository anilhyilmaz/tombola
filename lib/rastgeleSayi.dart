import 'dart:math';
import 'package:flutter/cupertino.dart';

class randomNumber extends ChangeNotifier{
  var RandomSayiList = [];
  late int myrandomnumber;

  void sayisec() {
    var rng = new Random();
    myrandomnumber = rng.nextInt(90);
    // print("sayi sec number: $myrandomnumber");
    RandomSayiList.add(myrandomnumber);
    notifyListeners();
  }
}