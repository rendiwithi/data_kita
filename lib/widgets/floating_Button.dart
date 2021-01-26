import 'package:data_kita/constants/colors_app.dart';
import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context, ) {
    return FloatingActionButton(
      backgroundColor: mainColor,
      child: Icon(
        Icons.add,
        color: Colors.black,
      ),
      onPressed: () {},
    );
  }
}
