import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tombala/CikanSayilarScreen.dart';
import 'package:tombala/DogruBilinenToplamSayiScreen.dart';
import 'package:tombala/rastgeleSayi.dart';
import 'package:tombala/secondTicket.dart';
import 'globals.dart' as globals;
import 'package:rflutter_alert/rflutter_alert.dart';

import 'firstTicket.dart';

class TombalaScreen extends StatefulWidget {
  var secilen_sayi;
  TombalaScreen({Key? key, this.secilen_sayi}) : super(key: key);

  @override
  _TombalaScreenState createState() => _TombalaScreenState();
}

class _TombalaScreenState extends State<TombalaScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onAlert(context);
  }

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
              flex: 5,
              child: widget.secilen_sayi == 0 ? firstTicket() : secondTicket(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if (globals.i != 50) {
            Provider.of<randomNumber>(context, listen: false)
                .dogruiseartir();
            print("globals i : ${globals.i}");
          } else if (globals.toplam == 15) {
            Alert(
              context: context,
              title: "Sonuçlar",
              desc: "Tebrikler TOMBOLA YAPTINIZ",
            ).show();
          } else {
            print("globals i : ${globals.i}");
            Alert(
              context: context,
              title: "SONUÇLAR",
              desc: "50 sayı çekilişinde tombala yapılamadı",
            ).show();
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

_onAlert(context) {
  Alert(
    context: context,
    title: "OYNANIŞ",
    desc: "Flutter is more awesome with RFlutter Alert.",
  ).show();
}
