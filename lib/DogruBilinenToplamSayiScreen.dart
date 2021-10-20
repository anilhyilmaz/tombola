import 'package:flutter/material.dart';

class DogruBilinenToplamSayilar extends StatelessWidget {
  const DogruBilinenToplamSayilar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int toplam = 0;
    return Row(
      children: [Text("$toplam",style: TextStyle(fontSize: 25)),
        Icon(
          Icons.favorite,
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),

      ],
    );
  }
}
