import 'package:flutter/material.dart';
import 'package:tugas2_mobile/login.dart';
import 'package:tugas2_mobile/stopwatch.dart';
import 'package:tugas2_mobile/utama.dart';
import 'package:bottom_nav_bar/bottom_nav_bar.dart';
class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  int _currentIndex = 0;
  Widget build(BuildContext context) {

    return Container(

      width: 800,
      height: 300,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: ListView(
          ),
          bottomNavigationBar: BottomNavBar(
            showElevation: false,
            backgroundColor: Colors.transparent,
            selectedIndex: _currentIndex,
            onItemSelected: (index) {
              setState(() => _currentIndex = index
              );
              switch (index) {
                case 0:
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return utama();
                  }
                  ));
                  break;
                case 1:
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return stopwatch();
                  }
                  ));
                  break;
                case 2:
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return login();
                  }
                  ));
                  break;
              }
            },

            items: <BottomNavBarItem>[
              BottomNavBarItem(
                title: 'Kembali',
                icon: const Icon(Icons.home_sharp),
                inactiveColor: Colors.blue,
                activeBackgroundColor: Colors.transparent,
              ),
              BottomNavBarItem(
                title: 'Help',
                icon: const Icon(Icons.live_help_outlined),
                inactiveColor: Colors.blue,
                activeBackgroundColor: Colors.transparent,
              ),
              BottomNavBarItem(
                title: 'Logout',
                icon: const Icon(Icons.backspace_outlined),
                inactiveColor: Colors.blue,
                activeBackgroundColor: Colors.transparent,
              ),
            ],
          )

      ),
    );
  }
}
