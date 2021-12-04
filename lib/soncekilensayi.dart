import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tombala/rastgeleSayi.dart';
import 'globals.dart' as globals;

class SonCekilenSayi extends StatelessWidget {
  const SonCekilenSayi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        "Son Çekilen Sayı : ${Provider.of<randomNumber>(context).myrandomnumber} ",
        style: TextStyle(fontSize: 25));
  }
}

