import 'package:flutter/material.dart';

class IconMenu extends StatelessWidget {
  final String text;
  const IconMenu(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(fontSize: 28),
      ),
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
