  import 'package:flutter/material.dart';
  import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tombala/rastgeleSayi.dart';
  import 'package:tombala/secondTicket.dart';
  import 'dart:math';

  import 'firstTicket.dart';



    class TombalaScreen extends StatelessWidget {
      var secilen_sayi;
      TombalaScreen({Key? key,this.secilen_sayi}) : super(key: key);



      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    "Çıkan Sayılar : ${Provider.of<randomNumber>(context).myrandomnumber}",
                    style: TextStyle(fontSize: 25),
                  )),
              Expanded(
                flex: 4,
                child: secilen_sayi == 0 ? firstTicket() : secondTicket(),
              ), RaisedButton(
                color: Colors.blueAccent,
                child: Text("Raised Buton örneğii",
                  style: TextStyle(color: Colors.white),),
                onPressed: () {
                  // Provider.of<randomNumber>(context,listen: false).sayisec();
                },
              )
            ],
          ),

        );
      }
    }

