import 'package:flutter/material.dart';
import 'package:instgram/main.dart';
import 'home_page.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 4;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      child: index == 0 ?  Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()),) : null;
      //Navigator.push(context,MaterialPageRoute(builder: (context) => Profile()),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(

      ),


      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        //selectedItemColor: ,
        //fixedColor:Colors.red ,
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue[500],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}


