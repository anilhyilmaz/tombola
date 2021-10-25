import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tombala/rastgeleSayi.dart';

class CikanSayilarScreen extends StatelessWidget {
  const CikanSayilarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        "Çıkan Sayılar : ${Provider.of<randomNumber>(context).RandomSayiList}",
        style: TextStyle(fontSize: 25));
  }
}
