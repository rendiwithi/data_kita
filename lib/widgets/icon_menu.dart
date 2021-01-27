import 'package:flutter/material.dart';

class IconMenu extends StatelessWidget {
  final String text;
  final Widget page;
  final IconData icon;
  const IconMenu(this.text, this.page, this.icon);
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return page;
        }));
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 36,),
            Text(
              text,
            ),
          ],
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
