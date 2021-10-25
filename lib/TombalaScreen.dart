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
  TombalaScreen({Key? key, this.secilen_sayi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Wrap(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(flex: 10, child: CikanSayilarScreen()),
                        Flexible(flex: 1, child: DogruBilinenToplamSayilar()),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 4,
              child: secilen_sayi == 0 ? firstTicket() : secondTicket(),
            ),
            Expanded(
                flex: 1,
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () {
                    if (globals.i != 50) {
                      Provider.of<randomNumber>(context, listen: false)
                          .dogruiseartir();
                      print("globals i : ${globals.i}");
                    } else if (globals.toplam == 15) {
                      AlertDialog(
                        title: Text("Sonuçlar"),
                        content: Text("Tebrikler TOMBOLA"),
                      );
                    } else {
                      print("globals i : ${globals.i}");
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Sonuçlar"),
                              content: Text(
                                  "50 sayı çekilişinde tombala yapılamadı"),
                            );
                          });
                    }
                  },
                ))
          ],
        ),
      ),
    );
  }
}
