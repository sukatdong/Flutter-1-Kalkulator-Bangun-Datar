import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

class Layang extends StatefulWidget {
  const Layang({Key? key}) : super(key: key);

  @override
  State<Layang> createState() => _LayangState();
}

class _LayangState extends State<Layang> {
  double diagonalA = 0;
  double diagonalB = 0;
  double hasil = 0;
  double sisiA = 0;
  double sisiB = 0;

  void luas() {
    setState(() {
      hasil = 0.5 * diagonalA * diagonalB;
    });
  }

  void keliling() {
    setState(() {
      hasil = 2 * (sisiA + sisiB);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perhitungan Layang-layang"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20)),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          diagonalA = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        labelText: "Diagonal Terpendek",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10)),
                      ),
                    )),
                    SizedBox(width: 20),
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          diagonalB = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Diagonal Terpanjang",
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ))
                  ],
                ),
                Padding(padding: new EdgeInsets.only(top: 20)),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          sisiA = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        labelText: "Sisi Terpendek",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10)),
                      ),
                    )),
                    SizedBox(width: 20),
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          sisiB = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Sisi Terpanjang",
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ))
                  ],
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 20),
                        child: ElevatedButton(
                          onPressed: luas,
                          child: Text(
                            "Luas ",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 20),
                        child: ElevatedButton(
                          onPressed: keliling,
                          child: Text(
                            "Keliling",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 50),
                ),
                Center(
                  child: Container(
                    height: 200,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.amber[100],
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
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 12),
                          Text(
                            'Hasil',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            '$hasil',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
