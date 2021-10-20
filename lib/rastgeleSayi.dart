import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'globals.dart' as globals;

class randomNumber extends ChangeNotifier{
  var RandomSayiList = [];
  late int myrandomnumber;
  int i= 0;

  int sayisec() {
    if(i<globals.ToplamList.length){
      var rng = new Random();
      myrandomnumber = rng.nextInt(90);
      RandomSayiList.add(myrandomnumber);
      i++;
      print(i);
      notifyListeners();
      print("sayi sec number: $myrandomnumber");
      return myrandomnumber;
    }
    else{
      notifyListeners();
      print("kotaya ulaşıldı");
      return 0;
    }
  }
}