import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tombala/CikanSayilarScreen.dart';
import 'package:tombala/DogruBilinenToplamSayiScreen.dart';
import 'package:tombala/rastgeleSayi.dart';
import 'package:tombala/secondTicket.dart';
import 'globals.dart' as globals;

import 'firstTicket.dart';

class TombalaScreen extends StatelessWidget {
  var secilen_sayi;
  var torba_sayisi;
  TombalaScreen({Key? key, this.secilen_sayi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 40,left: 40,top: 20,bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween
                  ,children: [
                    CikanSayilarScreen(),
                    DogruBilinenToplamSayilar()
                  ],
                ),
              )),
          Expanded(
            flex: 4,
            child: secilen_sayi == 0 ? firstTicket() : secondTicket(),
          ),
          RaisedButton(
            color: Colors.blueAccent,
            child: Text(
              "Torbadan Sayı Seç",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              torba_sayisi =
                  Provider.of<randomNumber>(context, listen: false).sayisec();
              print(torba_sayisi);
              print(globals.ToplamList);
              if (globals.ToplamList.contains(torba_sayisi)) {
                print("Biletinizde çekilen numara vardır");
              } else {
                print("Biletinizde çekilen numara yoktur");
              }
            },
          ),
        ],
      ),
    );
  }
}
