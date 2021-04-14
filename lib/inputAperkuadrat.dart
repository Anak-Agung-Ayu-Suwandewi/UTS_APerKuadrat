import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'outputAperkuadrat.dart';
import 'aboutMe.dart';
import 'teoriAperkuadrat.dart';


class InputAPK extends StatefulWidget {
  @override
  _InputAPKState createState() => _InputAPKState();
}

class _InputAPKState extends State<InputAPK> {
  int a = 0;
  int b = 0;
  int c = 0;

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.purple[300],
          size: 30
        ),
        title: Text('Akar Persamaan Kuadrat', style: TextStyle(fontSize: 20),
        ),
        actions: <Widget>[ 
          IconButton(
            icon: Icon(Icons.book, color: Colors.purple[300], size: 26),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Theory()),
              );
            },
          ),   
        ],
        bottom: PreferredSize(
          child: Container(
            color:Colors.purple[500],
            height: 4.0,
          ),
          preferredSize: Size.fromHeight(0),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset('images/Bingung.jpg', width: 150, 
                fit: BoxFit.fitWidth,
              ),
            ),

            Container(
              padding: EdgeInsets.all(12),
              color: Colors.purple[700],
              child: Column(
                children: <Widget>[
                  Text('Menghitung Akar Persamaan Kuadrat', style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.w500),),
                  Text('ax² + bx + c = 0', style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.w500),),
                  Text('Menggunakan Rumus ABC ', style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.w500),),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              color: Colors.pink[100],
              child: Text('Persamaan Kuadrat :',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.w500),),
            ),

            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          a = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        labelText: "Var a",
                        suffix: Text('x²'),
                        border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.0) ),
                        hintText: 'Var a'
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          b = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        labelText: "Var b",
                        suffix: Text('x'),
                        border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.0) ),
                        hintText: 'Var b'
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          c = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        labelText: "Konst c",
                        border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.0) ),
                        hintText: 'Konst c'
                      ),
                    ),
                  ),
                ],
              )
            ),

            Container(
              margin: EdgeInsets.only(left: 70,right: 70,bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context) => OutputAPK(vara: a, varb: b, varc: c)),
                  );
                },
                padding: EdgeInsets.only(top: 5, bottom: 5),
                color: Colors.green[500],
                child: Text(
                  'Hitung',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          color: Colors.pink[600],
          child: Text('Developed by Agung Ayu',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyProfil()),
            );
          },
        ),
      ),
    );
  }
}