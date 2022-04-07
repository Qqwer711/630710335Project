import 'package:flutter/material.dart';
import 'package:Project630710335/bottom_bar.dart';

class food extends StatelessWidget {
  final assetPath, price, name;

  food({this.assetPath, this.price, this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.pinkAccent),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('♥กดเลือกได้เลย♥',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.purple),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
          children: [
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                  'รายการอาหาร',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)
              ),
            ),
            SizedBox(height: 15.0),
            Hero(
                tag: assetPath,
                child: Image.asset(assetPath,
                    height: 250,
                    width: 150,
                    fit: BoxFit.contain
                )
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(price,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(name,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Varela',
                      fontSize: 24.0)),
            ),
            SizedBox(height: 20.0),
            Center(

            ),
            SizedBox(height: 20.0),
            Center(
                child: Container(
                    width: MediaQuery.of(context).size.width - 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.deepPurpleAccent
                    ),
                    child: Center(
                        child: Text('เพิ่มลงรถเข็น',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    )
                )
            )
          ]
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}