import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class TombalaScreen extends StatefulWidget {
  const TombalaScreen({Key? key}) : super(key: key);

  @override
  _TombalaScreenState createState() => _TombalaScreenState();
}

class _TombalaScreenState extends State<TombalaScreen> {
  int j = 0;
  List<int> myList = [];

  void _incrementCounter() {
    setState(() {
      var rng = new Random();
      for (var i = 0; i < 1; i++) {
        print(rng.nextInt(100));
        setState(() {
          j = rng.nextInt(100);
          myList.add(j);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40,),
          Expanded(flex: 1,child: Text("Çıkan Sayılar : ${myList}",style: TextStyle(fontSize: 25),)),
          Expanded(
            flex: 4,
            child: GridView.count(
              mainAxisSpacing: 3,
              crossAxisSpacing: 5,
              padding: EdgeInsets.all(5.0),
              crossAxisCount: 9,
              children: [
                Container(
                  color: Colors.white,
                  height: height,
                  child: Center(child: Text("${j}")),
                ),
                Container(
                  color: Colors.orange,
                  height: height,
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
                ),
                Container(
                  color: Colors.orange,
                  height: height,
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
                ),
                Container(
                  color: Colors.orange,
                  height: height,
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
                ),
                Container(
                  color: Colors.orange,
                  height: height,
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
                ),
                Container(
                  color: Colors.orange,
                  height: height,
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
                ),
                Container(
                  color: Colors.orange,
                  height: height,
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
                ),
                Container(
                  color: Colors.orange,
                  height: height,
                ),
                Container(
                  color: Colors.white,
                  height: height,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }


}
