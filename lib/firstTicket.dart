import 'dart:math';
import 'package:flutter/material.dart';
import 'globals.dart' as globals;

Widget firstTicket() {

  int g1 = 0;
  int g2 = 0;
  int g3 = 0;
  int g4 = 0;
  int g5 = 0;
  int g6 = 0;
  int g7 = 0;
  int g8 = 0;
  int g9 = 0;

  List<int> myList = [];
  int k = 0;

  var rng = new Random();
  for (var j = 0; j < 100; j++) {
    k = rng.nextInt(100);
    myList.add(k);
  }
  for (var i = 0; i < myList.length; i++) {
    if (10 >= myList[i] && 0 <= myList[i]) {
      g1 = myList[i];
    }
    if (20 >= myList[i] && 11 <= myList[i]) {
      g2 = myList[i];
    }
    if (30 >= myList[i] && 21 <= myList[i]) {
      g3 = myList[i];
    }
    if (40 >= myList[i] && 31 <= myList[i]) {
      g4 = myList[i];
    }
    if (50 >= myList[i] && 41 <= myList[i]) {
      g5 = myList[i];
    }
    if (60 >= myList[i] && 51 <= myList[i]) {
      g6 = myList[i];
    }
    if (70 >= myList[i] && 61 <= myList[i]) {
      g7 = myList[i];
    }
    if (80 >= myList[i] && 71 <= myList[i]) {
      g8 = myList[i];
    }
    if (90 >= myList[i] && 81 <= myList[i]) {
      g9 = myList[i];
    }
  }

  int l = 0;
  int g11 = 0;
  int g21 = 0;
  int g31 = 0;
  int g41 = 0;
  int g51 = 0;
  int g61 = 0;
  int g71 = 0;
  int g81 = 0;
  int g91 = 0;
  var g = 0;

  List<int> myList2 = [];

  var rng4 = new Random();
  for (l = 0; l < 100; l++) {
    g = rng4.nextInt(100);
    myList2.add(g);
  }
  for (var i = 0; i < myList2.length; i++) {
    if (10 >= myList2[i] && 0 <= myList2[i]) {
      g11 = myList2[i];
    }
    if (20 >= myList2[i] && 11 <= myList2[i]) {
      g21 = myList2[i];
    }
    if (30 >= myList2[i] && 21 <= myList2[i]) {
      g31 = myList2[i];
    }
    if (40 >= myList2[i] && 31 <= myList2[i]) {
      g41 = myList2[i];
    }
    if (50 >= myList2[i] && 41 <= myList2[i]) {
      g51 = myList2[i];
    }
    if (60 >= myList2[i] && 51 <= myList2[i]) {
      g61 = myList2[i];
    }
    if (70 >= myList2[i] && 61 <= myList2[i]) {
      g71 = myList2[i];
    }
    if (80 >= myList2[i] && 71 <= myList2[i]) {
      g81 = myList2[i];
    }
    if (90 >= myList2[i] && 81 <= myList2[i]) {
      g91 = myList2[i];
    }
  }

  int m = 0;
  int g111 = 0;
  int g211 = 0;
  int g311 = 0;
  int g411 = 0;
  int g511 = 0;
  int g611 = 0;
  int g711 = 0;
  int g811 = 0;
  int g911 = 0;
  var p = 0;

  List<int> myList3 = [];

  var rng3 = new Random();
  for (m = 0; m < 100; m++) {
    p = rng3.nextInt(100);
    myList3.add(p);
  }
  for (var i = 0; i < myList3.length; i++) {
    if (10 >= myList3[i] && 0 <= myList3[i]) {
      g111 = myList3[i];
    }
    if (20 >= myList3[i] && 11 <= myList3[i]) {
      g211 = myList3[i];
    }
    if (30 >= myList3[i] && 21 <= myList3[i]) {
      g311 = myList3[i];
    }
    if (40 >= myList3[i] && 31 <= myList3[i]) {
      g411 = myList3[i];
    }
    if (50 >= myList3[i] && 41 <= myList3[i]) {
      g511 = myList3[i];
    }
    if (60 >= myList3[i] && 51 <= myList3[i]) {
      g611 = myList3[i];

    }
    if (70 >= myList3[i] && 61 <= myList3[i]) {
      g711 = myList3[i];
    }
    if (80 >= myList3[i] && 71 <= myList3[i]) {
      g811 = myList3[i];
    }
    if (90 >= myList3[i] && 81 <= myList3[i]) {
      g911 = myList3[i];
    }
  }

  globals.ToplamList.add(g1);
  globals.ToplamList.add(g3);
  globals.ToplamList.add(g5);
  globals.ToplamList.add(g7);
  globals.ToplamList.add(g9);
  globals.ToplamList.add(g21);
  globals.ToplamList.add(g41);
  globals.ToplamList.add(g51);
  globals.ToplamList.add(g71);
  globals.ToplamList.add(g91);
  globals.ToplamList.add(g311);
  globals.ToplamList.add(g411);
  globals.ToplamList.add(g611);
  globals.ToplamList.add(g811);
  globals.ToplamList.add(g911);


  // ----------------------------------------------------------


  return GridView.count(
    mainAxisSpacing: 3,
    crossAxisSpacing: 5,
    padding: EdgeInsets.all(5.0),
    crossAxisCount: 9,
    children: [
      Container(
        color: Colors.white,
        child: Center(child: Text("$g1",style: TextStyle(fontSize: 40),)),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("$g3",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("$g5",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("$g7",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("$g9",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("$g21",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("$g41",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("$g51",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("$g71",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("$g91",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("$g311",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("$g411",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("$g611",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("$g811",style: TextStyle(fontSize: 40))),
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("$g911",style: TextStyle(fontSize: 40))),
      ),
    ],
  );
}