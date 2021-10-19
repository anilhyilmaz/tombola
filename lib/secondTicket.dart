import 'dart:math';
import 'package:flutter/material.dart';
Widget secondTicket() {
  int j2 = 0;
  int g1 = 0;
  int g2 = 0;
  int g3 = 0;
  int g4 = 0;
  int g5 = 0;
  int g6 = 0;
  int g7 = 0;
  int g8 = 0;
  int g9 = 0;

  List<int> myList4 = [];
  int k2 = 0;

  var rng4 = new Random();
  for (var j2 = 0; j2 < 100; j2++) {
    k2 = rng4.nextInt(100);
    myList4.add(k2);
  }
  for (var i = 0; i < myList4.length; i++) {
    if (10 >= myList4[i] && 0 <= myList4[i]) {
      g1 = myList4[i];
    }
    if (20 >= myList4[i] && 11 <= myList4[i]) {
      g2 = myList4[i];
    }
    if (30 >= myList4[i] && 21 <= myList4[i]) {
      g3 = myList4[i];
    }
    if (40 >= myList4[i] && 31 <= myList4[i]) {
      g4 = myList4[i];
    }
    if (50 >= myList4[i] && 41 <= myList4[i]) {
      g5 = myList4[i];
    }
    if (60 >= myList4[i] && 51 <= myList4[i]) {
      g6 = myList4[i];
    }
    if (70 >= myList4[i] && 61 <= myList4[i]) {
      g7 = myList4[i];
    }
    if (80 >= myList4[i] && 71 <= myList4[i]) {
      g8 = myList4[i];
    }
    if (90 >= myList4[i] && 81 <= myList4[i]) {
      g9 = myList4[i];
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

  List<int> myList5 = [];

  var rng5 = new Random();
  for (l = 0; l < 100; l++) {
    g = rng5.nextInt(100);
    myList5.add(g);
  }
  for (var i = 0; i < myList5.length; i++) {
    if (10 >= myList5[i] && 0 <= myList5[i]) {
      g11 = myList5[i];
    }
    if (20 >= myList5[i] && 11 <= myList5[i]) {
      g21 = myList5[i];
    }
    if (30 >= myList5[i] && 21 <= myList5[i]) {
      g31 = myList5[i];
    }
    if (40 >= myList5[i] && 31 <= myList5[i]) {
      g41 = myList5[i];
    }
    if (50 >= myList5[i] && 41 <= myList5[i]) {
      g51 = myList5[i];
    }
    if (60 >= myList5[i] && 51 <= myList5[i]) {
      g61 = myList5[i];
    }
    if (70 >= myList5[i] && 61 <= myList5[i]) {
      g71 = myList5[i];
    }
    if (80 >= myList5[i] && 71 <= myList5[i]) {
      g81 = myList5[i];
    }
    if (90 >= myList5[i] && 81 <= myList5[i]) {
      g91 = myList5[i];
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

  List<int> myList6 = [];

  var rng6 = new Random();
  for (m = 0; m < 100; m++) {
    p = rng6.nextInt(100);
    myList6.add(p);
  }
  for (var i = 0; i < myList6.length; i++) {
    if (10 >= myList6[i] && 0 <= myList6[i]) {
      g111 = myList6[i];
    }
    if (20 >= myList6[i] && 11 <= myList6[i]) {
      g211 = myList6[i];
    }
    if (30 >= myList6[i] && 21 <= myList6[i]) {
      g311 = myList6[i];
    }
    if (40 >= myList6[i] && 31 <= myList6[i]) {
      g411 = myList6[i];
    }
    if (50 >= myList6[i] && 41 <= myList6[i]) {
      g511 = myList6[i];
    }
    if (60 >= myList6[i] && 51 <= myList6[i]) {
      g611 = myList6[i];
    }
    if (70 >= myList6[i] && 61 <= myList6[i]) {
      g711 = myList6[i];
    }
    if (80 >= myList6[i] && 71 <= myList6[i]) {
      g811 = myList6[i];
    }
    if (90 >= myList6[i] && 81 <= myList6[i]) {
      g911 = myList6[i];
    }
  }

  //------------------------------------------------


  return GridView.count(
    mainAxisSpacing: 3,
    crossAxisSpacing: 5,
    padding: EdgeInsets.all(5.0),
    crossAxisCount: 9,
    children: [
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("${g2}")),
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("${g4}")),
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("${g6}")),
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("${g7}")),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("${g9}")),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("${g21}")),
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("${g31}")),
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("${g51}")),
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("${g61}")),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("${g81}")),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("${g111}")),
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("${g211}")),
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("${g511}")),
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.white,
        child: Center(child: Text("${g711}")),
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Text("${g811}")),
      ),
      Container(
        color: Colors.white,
      ),
    ],
  );
}