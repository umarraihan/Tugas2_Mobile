
import 'package:flutter/material.dart';

import 'navbar.dart';
class hobi extends StatefulWidget {
  const hobi({Key? key}) : super(key: key);


  @override
  State<hobi> createState() => _hobiState();
}

class _hobiState extends State<hobi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Hobi',style: TextStyle(
            color: Colors.blue,fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.yellow,
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.yellow,
                  ),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Image.asset("foto/make.jpg"),
                    SizedBox(height: 15,),
                    Text("Augys Dellea Risha Aisya\nHobi : Make Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),),
                    SizedBox(height: 30,),
                    Image.asset("foto/masak.jpeg"),
                    SizedBox(height: 15,),
                    Text("Dyah Ayu Zubaeda\nHobi : Memasak",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),),
                    SizedBox(height: 30,),
                    Image.asset("foto/base.jpg"),
                    SizedBox(height: 15,),
                    Text("Umar Raihan Baluwel\nHobi : Olahraga Baseball",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),),
                    SizedBox(height: 10,),
                    navbar(),
                  ],
                ),

              ),

            ),

          );

        },
        itemCount: 1,
      ),

    );

  }
}

