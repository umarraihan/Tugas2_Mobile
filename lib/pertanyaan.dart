import 'package:flutter/material.dart';
import 'package:tugas2_mobile/navbar.dart';

class pertanyaan extends StatefulWidget {
  const pertanyaan({Key? key}) : super(key: key);

  @override
  State<pertanyaan> createState() => _pertanyaanState();
}

class _pertanyaanState extends State<pertanyaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Tata Cara Penggunaan Stopwatch',style: TextStyle(
            color: Colors.blue,fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.yellow,
        elevation: 0,
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        SizedBox(height: 300),
        Expanded(
          child: FittedBox(
            fit: BoxFit.none,
            child: Text("1. Masuk Kedalam Aplikasi Dengan Cara Register\n"
                "2. Memilih Kolom Stopwatch Untuk Melakukan Stopwatch\n"
                "3. Setelah Itu Klik Button Start Untuk Memulai Stopwatch\n"
                "4. Setelah Itu Terdapat Kolom Stop Untuk Memberhentikan Stopwatch Sementara Dan Dapat Dimulai Kembali Dengan Menekan Tombol Start\n"
                "5. Untuk Mereset Waktu Dapat Memilih Button Reset",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100),
              navbar(),
            ],
          ),
        ),
      ],
    );
  }


}
