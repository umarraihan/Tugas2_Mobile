import 'package:flutter/material.dart';
import 'package:tugas2_mobile/anggota.dart';
import 'package:tugas2_mobile/hobi.dart';
import 'package:tugas2_mobile/navbar.dart';
import 'package:tugas2_mobile/stopwatch.dart';
class utama extends StatefulWidget {
  const utama({Key? key}) : super(key: key);

  @override
  State<utama> createState() => _utamaState();
}

class _utamaState extends State<utama> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false,
      title: Text('Home Screen',style: TextStyle(
          color: Colors.blue,fontWeight: FontWeight.bold
      ),),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
        body: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _anggota(context),
            _hobi(context),
            _stopwatchyuk(context),
            navbar(),
          ],
        )
      )
    );
  }
}

Widget _anggota(BuildContext context){
  return SizedBox(
    child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
      width: MediaQuery.of(context).size.width,
      child: SizedBox(
        height: 65,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
            ),
            child: Text("Anggota",style: TextStyle(
                fontSize: 20, color: Colors.blue,fontWeight: FontWeight.bold
            ),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              {
              return anggota();
              }));
            }))),
  );
}

Widget _hobi(BuildContext context){
  return SizedBox(
    child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        width: MediaQuery.of(context).size.width,
        child: SizedBox(
            height: 65,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
                child: Text("Hobi Anggota Kelompok",style: TextStyle(
                    fontSize: 20, color: Colors.blue,fontWeight: FontWeight.bold
                ),),

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                   return hobi() ;
                  }));

                }))),

  );
}

Widget _stopwatchyuk(BuildContext context){
  return SizedBox(
    child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        width: MediaQuery.of(context).size.width,
        child: SizedBox(
            height: 65,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom( 
                  primary: Colors.yellow,
                ),
                child: Text("Stopwatch",style: TextStyle(
                    fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold
                ),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                   return stopwatch();
                  }));
                }))),
  );
}