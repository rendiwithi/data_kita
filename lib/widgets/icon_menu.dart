import 'package:data_kita/view/test_view.dart';
import 'package:flutter/material.dart';

class IconMenu extends StatelessWidget {
  final String text;
  final StatelessWidget page;
  const IconMenu(this.text, this.page);
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return page;
        }));
      },
      child: Container(
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
      ),
    );
  }
}
