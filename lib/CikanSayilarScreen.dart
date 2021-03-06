import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tombala/rastgeleSayi.dart';
import 'globals.dart' as globals;

class CikanSayilarScreen extends StatelessWidget {
  const CikanSayilarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        "Toplam Çekilen Sayı : ${Provider.of<randomNumber>(context).lengtofRandomSayiList} ",
        style: TextStyle(fontSize: 25));
  }
}
