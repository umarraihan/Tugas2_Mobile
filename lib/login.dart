import 'package:flutter/material.dart';
import 'package:tugas2_mobile/utama.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override

  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Login Screen',style: TextStyle(
            color: Colors.blue,fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.yellow,
        elevation: 0,
        centerTitle: true,
      ),

    body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
    Image.asset("foto/wallpaper.jpg",
      fit: BoxFit.cover,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
      _usernamebox(), _passwordbox(), _loginButton(context)
    ],
      ),
    ],),
    ));
  }
  Widget _usernamebox(){
    return SizedBox(
        width: 700,
        child: Container(
        padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
    ),
    child: TextFormField(
    onChanged: (value){
    username = value;
    },
    enabled: true,
    decoration: const InputDecoration(

    hintText: 'Username',
    contentPadding: EdgeInsets.all(10.0),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(18)),
    borderSide: BorderSide(
    color: Colors.blue,
    ))))));}

  Widget _passwordbox(){
    return Center(
      child: SizedBox(
        width: 700,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: TextFormField(
            onChanged: (value){
              password = value;
            },
            obscureText: true,
            enabled: true,
            decoration: const InputDecoration(
              hintText: 'Password',
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                borderSide: BorderSide(
                  color: Colors.blue,
                )))))));}


  Widget _loginButton(BuildContext context) {
    return Container(
      width: 250, height: 80,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          if (password == "") {
            setState(() {
              text = "Login Success";
              isLoginSuccess = true;
            });
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return utama();
                }));
          } else {
            setState(() {
              text = "Login Failed";
              isLoginSuccess = false;
            });
          }

          SnackBar snackBar = SnackBar(
              content: Text(text)
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text("Login",style: TextStyle(
            fontSize: 20, color: Colors.blue,fontWeight: FontWeight.bold
        ),),
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
          primary: (isLoginSuccess) ? Colors.blue : Colors.yellow,
          onPrimary: Colors.blue,
        ),
      ),
    );
  }

}

