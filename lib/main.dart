import 'package:flutter/material.dart';

void main() => runApp(ApplicationWidget());

class ApplicationWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold( //Scaffold contains some basic elements of empty page like White background, themes for Text, etc
          appBar: AppBar(title: Text("App Bar Text Widget"),), //Default App bar with a title

          body: Text("This is my default Text"), //Body is the Background of the App.

          bottomNavigationBar: BottomNavigationBar( //Bottom Navigation Bar
            backgroundColor: Colors.amberAccent,
            items: const <BottomNavigationBarItem>[  //Tabs of the Bottom Navigation bar are written here
              BottomNavigationBarItem(icon: Icon(Icons.access_alarm),title: Text("Alarm")),
              BottomNavigationBarItem(icon: Icon(Icons.access_time),title: Text("Time"))
            ]
         )

        )
    );
  }

}