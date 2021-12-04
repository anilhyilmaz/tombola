import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tombala/rastgeleSayi.dart';

class BilinenSayilar extends StatelessWidget {
  const BilinenSayilar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        "Bilinenler : ${Provider.of<randomNumber>(context).BilinenSayilar} ",
        style: TextStyle(fontSize: 25));
  }
}
