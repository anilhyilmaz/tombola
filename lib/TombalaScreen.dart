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
                        title: "Sonu??lar",
                        desc: "Tebrikler TOMBOLA YAPTINIZ",
                      ).show();
                    } else {
                      print("globals i : ${globals.i}");
                      Alert(
                        context: context,
                        title: "SONU??LAR",
                        desc: "70 say?? ??ekili??inde tombala yap??lamad??",
                      ).show();
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Image.asset("images.jpg"), Text("Say?? ??ekin")],
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
    title: "OYNANI??",
    desc: "Say?? se?? ile random say?? se??ebilir ve ??st"
        "k??s??mda bulunan bilgiler ile takip edebilirsiniz,"
        "toplam 70 random say?? ??ekili??ine izin verilmektedir! "
  ).show();
}
