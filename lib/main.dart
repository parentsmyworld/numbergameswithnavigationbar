import 'package:flutter/material.dart';
import 'package:flutter_calculatornavigatbar/pages/Smallest.dart';
import 'package:flutter_calculatornavigatbar/pages/divisibilityby8.dart';
import 'package:flutter_calculatornavigatbar/pages/evenodd.dart';
import 'package:flutter_calculatornavigatbar/pages/largest.dart';
void main(){
  runApp(Home());
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pages=[EvenorOdd(),Largest(),Smallest(),Div()];
  int _myindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xff833ab4),Color(0xfffd1d1d),Color(0xfffcb045)])
            ),
          ),
          title: Center(child: Text("NUMBER GAMES",style: TextStyle(color: Colors.black),)),
        ),
        body: pages[_myindex],
        bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 0.5)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff833ab4),Color(0xfffd1d1d),Color(0xfffcb045)])
        ),
          child: BottomNavigationBar(
            selectedFontSize: 15,
            unselectedFontSize: 10,
            elevation: 50,
            unselectedItemColor: Colors.white,
            //if the value of elevation is small, then a black shade will appear, otherwise it is correct
            iconSize: 25,
            selectedItemColor: Colors.black,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            currentIndex: _myindex,
            onTap: (index){
              setState(() {
                _myindex=index;
              });
            },
              items: [
                BottomNavigationBarItem(

                    icon: Icon(Icons.home),
                title: Text("Even or Odd")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_forward_ios),
                    title: Text("Largest")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_forward_ios),
                    title: Text("Smallest")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_forward_ios),
                    title: Text("Divisibility8"))
              ]),
        ),
      ),
    );
  }
}
