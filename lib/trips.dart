import 'package:flutter/material.dart';
import "home_trips.dart";

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips> {

  final List<Widget> widgetsChildren = [
    HomeTrips(),
  ];

  void onTapTapped(int index) {

  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body:
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              ),
            ]
        ),
      ),
    );
  }

}