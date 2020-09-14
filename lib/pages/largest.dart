import 'package:flutter/material.dart';

class Largest extends StatefulWidget {
  @override
  _LargestState createState() => _LargestState();
}

class _LargestState extends State<Largest> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  TextEditingController num3=TextEditingController();
  String result="";
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xff833ab4),Color(0xfffd1d1d),Color(0xfffcb045)])
              ),
              child: Column(
                children: [
                  TextField(
                      controller: num1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          prefixIcon: Icon(Icons.keyboard),
                          hintText: "Enter 1st Number"
                      )
                  ),
                  SizedBox(height: 15.0,),
                  TextField(
                      controller: num2,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          prefixIcon: Icon(Icons.keyboard),
                          hintText: "Enter 2nd Number"
                      )
                  ),
                  SizedBox(height: 15.0,),
                  TextField(
                      controller: num3,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          prefixIcon: Icon(Icons.keyboard),
                          hintText: "Enter 3rd Number"
                      )
                  ),
                  SizedBox(height: 15.0,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        var a=int.parse(num1.text);
                        var b=int.parse(num2.text);
                        var c=int.parse(num3.text);
                        if (a>b)
                          if (a>c) {
                            result="$a is largest";}
                          else {
                            result="$c is Largest";
                          }
                        else if (b>c){
                          result="$b is largest";
                        }
                        else
                          result="$c is largest";
                        //flag=1;
                      });
                    },
                    child: Container(
                      child: Center(child: Text("Find the Largest")),
                      height: 60.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border(top: BorderSide(width: 0.6),
                              right:BorderSide(width: 0.6),
                              left: BorderSide(width: 0.6),
                              bottom: BorderSide(width: 0.6))
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Text(result,style: TextStyle(
                      color: Colors.green
                  ),),
                ],
              ),

    );
  }
}
