import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.black),
                  color: Color(0xff6dede5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            right: 20,
            left: 20,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.person,
                      size: 45,
                      color: Colors.blue,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.bookmark,
                      size: 45,
                      color: Colors.blue,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.settings,
                      size: 45,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.black),
                color: Color(0xffa6f5ef),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
