import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tombala/rastgeleSayi.dart';

import 'globals.dart';

class DogruBilinenToplamSayilar extends StatelessWidget {
  const DogruBilinenToplamSayilar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [Text("${Provider.of<randomNumber>(context).toplam}",style: TextStyle(fontSize: 25)),
        Icon(
          Icons.check,
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),

      ],
    );
  }
}
