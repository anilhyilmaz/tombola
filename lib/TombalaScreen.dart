import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class TombalaScreen extends StatefulWidget {
  const TombalaScreen({Key? key}) : super(key: key);

  @override
  _TombalaScreenState createState() => _TombalaScreenState();
}

class _TombalaScreenState extends State<TombalaScreen> {

  var secilen_sayi = 0;

  @override
  Widget build(BuildContext context) {

    Widget baslangicWidget = secondTicket();


    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
              flex: 1,
              child: Text(
                "Çıkan Sayılar : ",
                style: TextStyle(fontSize: 25),
              )),
          Expanded(
            flex: 4,
            child: secilen_sayi == 0 ? firstTicket() : secondTicket(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: random_function,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget firstTicket() {
    int j = 0;
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
      for (var i = 0; i < myList.length; i++) {
        setState(() {
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
        });
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

    var rng2 = new Random();
    for (l = 0; l < 100; l++) {
      g = rng2.nextInt(100);
      myList2.add(g);
      for (var i = 0; i < myList2.length; i++) {
        setState(() {
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
        });
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
    print(g411);

    List<int> myList3 = [];

    var rng3 = new Random();
    for (m = 0; m < 100; m++) {
      p = rng3.nextInt(100);
      myList3.add(p);
      for (var i = 0; i < myList3.length; i++) {
        setState(() {
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
        });
      }
    }
    // ----------------------------------------------------------

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GridView.count(
      mainAxisSpacing: 3,
      crossAxisSpacing: 5,
      padding: EdgeInsets.all(5.0),
      crossAxisCount: 9,
      children: [
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g1}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g3}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g5}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g7}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g9}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g21}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g41}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g51}")),
        ),
        Container(
          color: Colors.white,
          height: height,
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g71}")),
        ),
        Container(
          color: Colors.white,
          height: height,
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g91}")),
        ),
        Container(
          color: Colors.white,
          height: height,
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g311}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g411}")),
        ),
        Container(
          color: Colors.white,
          height: height,
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g611}")),
        ),
        Container(
          color: Colors.white,
          height: height,
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g811}")),
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g911}")),
        ),
      ],
    );
  }

  Widget secondTicket() {
    int j = 0;
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


        var rng4 = new Random();
        for (var j = 0; j < 100; j++) {
          k = rng4.nextInt(100);
          myList.add(k);
          for (var i = 0; i < myList.length; i++) {
            setState(() {
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
            });
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

        var rng5 = new Random();
        for (l = 0; l < 100; l++) {
          g = rng5.nextInt(100);
          myList2.add(g);
          for (var i = 0; i < myList2.length; i++) {
            setState(() {
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
            });
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

        var rng6 = new Random();
        for (m = 0; m < 100; m++) {
          p = rng6.nextInt(100);
          myList3.add(p);
          for (var i = 0; i < myList3.length; i++) {
            setState(() {
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
            });
          }
    }

    //------------------------------------------------

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GridView.count(
      mainAxisSpacing: 3,
      crossAxisSpacing: 5,
      padding: EdgeInsets.all(5.0),
      crossAxisCount: 9,
      children: [
        Container(
          color: Colors.white,
          height: height,
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g2}")),
        ),
        Container(
          color: Colors.white,
          height: height,
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g4}")),
        ),
        Container(
          color: Colors.white,
          height: height,
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g6}")),
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g7}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g9}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g21}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g31}")),
        ),
        Container(
          color: Colors.white,
          height: height,
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g51}")),
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g61}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g81}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g111}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g211}")),
        ),
        Container(
          color: Colors.white,
          height: height,
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g511}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
        ),
        Container(
          color: Colors.white,
          height: height,
          child: Center(child: Text("${g711}")),
        ),
        Container(
          color: Colors.orange,
          height: height,
          child: Center(child: Text("${g811}")),
        ),
        Container(
          color: Colors.white,
          height: height,
        ),
      ],
    );
  }

  void random_function() {
    setState(() {
      var p;
      var rng = new Random();
      p = rng.nextInt(2);
      secilen_sayi = p;
      print("secilen sayi  : $secilen_sayi");
    });
  }
  void tombala_number_generation(){
    setState(() {
      var tombala_number;
      var tombalanumberList = [];
      var rng2 = new Random();
      tombala_number = rng2.nextInt(90);
      tombalanumberList.add(tombala_number);
    });
  }
}
