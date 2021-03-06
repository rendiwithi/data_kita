import 'package:data_kita/view/test_view.dart';
import 'package:flutter/material.dart';

final List items = ['Apple', 'DataKita', 'Microsoft', 'Binomo'];

Widget sponsorWidget(BuildContext context, Color mainColor) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: PageView.builder(
          itemCount: items.length,
          controller: PageController(viewportFraction: 0.7),
          itemBuilder: (BuildContext context, int itemIndex) {
            // boxColor = colorBox[itemIndex].toString();
            return TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return TestView();
                }));
              },
              child: Container(
                child: Center(
                  child: Text(
                    items[itemIndex].toString(),
                    // items.toString(),
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: mainColor,
                  border: Border.all(width: 2.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
              ),
            );
          },
        ),
      )
    ],
  );
}
