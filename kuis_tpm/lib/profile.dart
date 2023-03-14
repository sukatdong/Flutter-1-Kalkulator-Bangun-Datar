import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Profile"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 520,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.amber[500],
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('./assets/profil.jpeg',
                          height: 400, width: 250),
                      Text(
                        'Hartanta Dwi Putra Sembiring',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '123200037 TPM-IF-A',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hobby Berenang',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
