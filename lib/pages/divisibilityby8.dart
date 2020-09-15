import 'package:flutter/material.dart';
class Div extends StatefulWidget {
  @override
  _DivState createState() => _DivState();
}

class _DivState extends State<Div> {
  TextEditingController num=TextEditingController();
  String result="";
  int flag;
  @override
  Widget build(BuildContext context) {
    Color getColor(){
      if(flag==1)
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
                        var x=int.parse(num.text);
                        if (x%8==0)
                        {result="$x is divisible by 8";
                        flag=1;}
                        else
                        {result="$x is not divisible by 8";
                        flag=0;

                        }
                      });
                    },
                    child: Container(
                      child: Center(child: Text("Check divisibility")),
                      height: 60.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(top: BorderSide(width: 0.6),
                              right:BorderSide(width: 0.6),
                              left: BorderSide(width: 0.6),
                              bottom: BorderSide(width: 0.6)),
                          color: Colors.transparent
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(result,style: TextStyle(
                      color: getColor()
                  ),)
                ]
            ),
          );
  }
}
