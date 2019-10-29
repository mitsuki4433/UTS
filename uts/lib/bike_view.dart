import 'package:flutter/material.dart';

class BikeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Snackbar Berhasil'),
            action: SnackBarAction(
              label: 'Batal',
              onPressed: () {},
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Klik untuk menampilkan SnackBar'),
      ),
    );
  }
}
