import 'package:data_kita/constants/colors_app.dart';
import 'package:data_kita/view/share_view/share_view.dart';
import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatelessWidget {
  final IconData icon;
  const FloatingButtonWidget({this.icon});
  @override
  Widget build(BuildContext context, ) {
    return FloatingActionButton(
      backgroundColor: mainColor,
      child: Icon(
        icon,
        color: Colors.black,
      ),
      onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (_) {
          return ShareView();
        }));
      },
    );
  }
}
