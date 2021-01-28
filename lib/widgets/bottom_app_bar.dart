import 'package:data_kita/constants/colors_app.dart';
import 'package:data_kita/view/test_view.dart';
import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: mainColor,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.09,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return TestView();
                    }));
                  }),
              SizedBox(width: 40), // The dummy child
              IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return TestView();
                    }));
                  }),
            ],
          ),
        ));
  }
}
