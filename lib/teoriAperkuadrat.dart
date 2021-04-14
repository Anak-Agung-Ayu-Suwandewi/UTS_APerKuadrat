import 'package:flutter/material.dart';

class Theory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  
    Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Teori Rumus ABC"),
        centerTitle: true,
        bottom: PreferredSize(
          child: Container(
            color:Colors.purple,
            height: 4.0,
          ),
          preferredSize: Size.fromHeight(0),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Konten()
    );
  }
}

class Konten extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 5, left: 110, right: 110, bottom: 1),
            color: Colors.amber[100],
            child: Image.asset('images/teori.png', width: 200, 
              fit: BoxFit.fitWidth,
            ),
          ),

          Container(
            padding: EdgeInsets.all(3),
            color: Colors.green[500],
          ),

          Container( 
            child: Text(
              ' Akar persamaan kuadrat ax² + bx + c = 0 adalah nilai x yang'
              ' memenuhi persamaan kuadrat tersebut, atau dengan kata lain '
              ' nilai-nilai x yang menyebabkan persamaan kuadrat tersebut  '
              ' bernilai benar.',
              textAlign: TextAlign.justify,
            ),
            padding: EdgeInsets.only(top:5, left: 8, right: 8, bottom: 5),
            margin: EdgeInsets.only(top:3, bottom: 2, left: 2, right: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.yellow[900],
                width: 2,
              ) 
            ),
          ),
          Container( 
            child: Text(
              ' Sebagai contoh, akar-akar persamaan kuadrat x² – 4x + 3 = 0'
              ' adalah 1 atau 3. Alasannya sederhana, (1)² – 4(1) + 3 = 0 dan (3)² – 4(3) + 3 = 0. '
              ' Berikut ini adalah cara mendapatkan akar menggunakan rumus kuadrat atau rumus ABC',
              textAlign: TextAlign.justify,
            ),
            padding: EdgeInsets.only(top:5, left: 8, right: 8, bottom: 5),
            margin: EdgeInsets.only(top:3, bottom: 2, left: 2, right: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.yellow[900],
                width: 2,
              ) 
            ),
          ),

          Container(
            child: Image.asset('images/rumus.jpg', width: 150, 
              fit: BoxFit.fitWidth,
            ),
          ),

          Container(
            child: Text(
              'Rumus ABC ini digunakan untuk mencari penyelesaian akar-akar'
              ' kuadrat y = ax² + bx + c jika y = 0. Dengan rumus ini, penyelesaian'
              ' didapatkan dengan memasukkan nilai koefisien a, b, dan c ke Rumus'
              ' ABC tersebut dan menyelesaikan persamaan matematika tersebut untuk'
              ' mendapatkan nilai dari akar-akar persamaan kuadrat.',
              textAlign: TextAlign.justify,
            ),
            padding: EdgeInsets.only(top:5, left: 8, right: 8, bottom: 5),
            margin: EdgeInsets.only(top:3, bottom: 5, left: 2, right: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.yellow[900],
                width: 2,
              ) 
            ),
          ),
        ]
      ),
    );
  }
}


 
