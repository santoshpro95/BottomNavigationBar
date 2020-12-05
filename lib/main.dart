import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: bottomBar(),
        body:screens() ,
      ),
    );
  }

  Widget bottomBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.padding,
              //color: Colors.grey,
            ),
            label: "Home1",
            activeIcon: Icon(
              Icons.padding,
              // color: Colors.blue,
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.padding,
              //color: Colors.grey,
            ),
            label: "Home2",
            activeIcon: Icon(
              Icons.padding,
              // color: Colors.blue,
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.padding,
              //color: Colors.grey,
            ),
            label: "Home3",
            activeIcon: Icon(
              Icons.padding,
              //color: Colors.blue,
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.padding,
              //color: Colors.grey,
            ),
            label: "Home4",
            activeIcon: Icon(
              Icons.padding,
              //color: Colors.blue,
            )),
      ],
      currentIndex: selectedIndex,
      onTap: (position) {
        selectedIndex = position;
        print(position);
        setState(() {});
      },
      type: BottomNavigationBarType.fixed,
      elevation: 10,
      unselectedItemColor: Colors.green,
      selectedItemColor: Colors.red,
      selectedLabelStyle: TextStyle(fontSize: 18),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      showUnselectedLabels: true,
      showSelectedLabels: true,
      backgroundColor: Colors.black45,
      selectedIconTheme: IconThemeData(color: Colors.green, opacity: 1, size: 35),
      unselectedIconTheme: IconThemeData(color: Colors.grey, opacity: 1, size: 25),
    );
  }

  Widget screens(){
    return IndexedStack(
      index: selectedIndex,
      children: [
        Container(
          color: Colors.red,
          child: Center(
            child: Text("Home1"),
          ),
        ),
        Container(
          color: Colors.amber,
          child: Center(
            child: Text("Home2"),
          ),
        ),
        Container(
          color: Colors.blue,
          child: Center(
            child: Text("Home3"),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Text("Home4"),
          ),
        ),
      ],
    );
  }
}
