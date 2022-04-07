import 'package:flutter/material.dart';
import 'package:Project630710335/detail.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('ผัดไทย', '\50 บาท', 'assets/pad.jpg',
                      false, false, context),
                  _buildCard('ไก่กระเทียมราดข้าว', '\45 บาท', 'assets/galic.jpg',
                      true, false, context),
                  _buildCard('คุกกี้วนิลาช็อตโกแลตชิป', '\23 บาท',
                      'assets/cookieclassic.jpg', false, true, context),
                  _buildCard('คุกกี้ช็อกโก้ช็อตโกเเลตชิป', '\23 บาท', 'assets/cookiechoco.jpg',
                      false, false, context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => food(
                      assetPath: imgPath,
                      price:price,
                      name: name
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [

                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontFamily: 'Varela',
                          fontSize: 20)),
                  Text(name,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Varela',
                          fontSize: 25)),
                  Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(color: Colors.teal, height: 1)),

                ]))));
  }
}