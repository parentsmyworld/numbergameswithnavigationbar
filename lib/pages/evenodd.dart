
import 'package:flutter/material.dart';

class EvenorOdd extends StatefulWidget {
  @override
  _EvenorOddState createState() => _EvenorOddState();
}

class _EvenorOddState extends State<EvenorOdd> {
  TextEditingController num=TextEditingController();
  String result="";
  int flag;
  @override
  Widget build(BuildContext context) {
    Color getColor(){
      if (flag==1)
        return Colors.green;
      else
        return Colors.yellowAccent;
    }
    return Container(
            padding: EdgeInsets.all(40.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xff833ab4),Color(0xfffd1d1d),Color(0xfffcb045)])
            ),
            child: Column(
              children: [
                SizedBox(height: 60.0,),
                TextField(
                    controller: num,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        prefixIcon: Icon(Icons.keyboard),
                        hintText: "Enter a Number"
                    )
                ),
                SizedBox(height: 30.0,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      int a=int.parse(num.text);
                      if (a%2==0)
                      { result="$a is even";
                      flag=1;}
                      else
                      {result="$a is odd";
                      flag=0;
                      }
                    }
                    );

                  },
                  child: Container(
                    child: Center(child: Text("Check Even or Odd")),
                    height: 60.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(width: 0.6),
                            right:BorderSide(width: 0.6),
                            left: BorderSide(width: 0.6),
                            bottom: BorderSide(width: 0.6)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.transparent
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Text(result,style: TextStyle(
                    fontSize: 20.0,
                    color: getColor()
                ),),
                SizedBox(height: 150.0,),

              ],
            ),
          );

  }
}
