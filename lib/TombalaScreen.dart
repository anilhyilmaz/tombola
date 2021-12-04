import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tombala/CikanSayilarScreen.dart';
import 'package:tombala/DogruBilinenToplamSayiScreen.dart';
import 'package:tombala/bilinensayilarscreen.dart';
import 'package:tombala/rastgeleSayi.dart';
import 'package:tombala/secondTicket.dart';
import 'package:tombala/soncekilensayi.dart';
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
                flex: 2,
                child: Wrap(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(flex: 4, child: CikanSayilarScreen()),
                        Flexible(flex: 4, child: SonCekilenSayi()),
                        Flexible(flex: 1, child: DogruBilinenToplamSayilar()),
                      ],
                    ),
                    Row(children: [BilinenSayilar()],),
                  ],
                )),
            Expanded(
              flex: 7,
              child: widget.secilen_sayi == 0 ? firstTicket() : secondTicket(),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                  onTap: () {
                    if (globals.i != 70) {
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
                        desc: "70 sayı çekilişinde tombala yapılamadı",
                      ).show();
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Image.asset("images.jpg"), Text("Sayı Çekin")],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

_onAlert(context) {
  Alert(
    context: context,
    title: "OYNANIŞ",
    desc: "Sayı seç ile random sayı seçebilir ve üst"
        "kısımda bulunan bilgiler ile takip edebilirsiniz,"
        "toplam 70 random sayı çekilişine izin verilmektedir! "
  ).show();
}
