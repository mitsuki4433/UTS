import 'package:flutter/material.dart';
import 'package:uts/pindah_halaman.dart';



class CarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        child: Text('Pindah'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua()));
        },
      ),
    ));
  }
}

