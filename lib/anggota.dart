import 'package:flutter/material.dart';
import 'package:tugas2_mobile/navbar.dart';

class anggota extends StatefulWidget {
  const anggota({Key? key}) : super(key: key);

  @override
  State<anggota> createState() => _anggotaState();
}

class _anggotaState extends State<anggota> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.yellow.shade100,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('Anggota Kelompok',style: TextStyle(
                color: Colors.blue,fontWeight: FontWeight.bold
            ),),
            backgroundColor: Colors.yellow,
            elevation: 0,
            centerTitle: true,
          ),
          body: ListView(
            children :[Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 200),
                  // padding: const EdgeInsets.only(top: 50.0),
                  Text(
                      "Anggota Kelompok",
                      style: TextStyle(
                          fontSize: 45,
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold
                      )
                  ),

                  Padding(padding: EdgeInsets.all(20.0),),
                  Text(
                    "Augys Dellea Rischa Aisya     124200037\nDyah Ayu Zubaeda                   124200039\nUmar Raihan Baluwel              124200040",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.yellow,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                  SizedBox(height: 200),
                  navbar(),
                ]
            ),
          ]
          ),

        )

    );
  }
}
