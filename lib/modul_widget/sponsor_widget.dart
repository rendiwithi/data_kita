import 'package:flutter/material.dart';

final List items = ['1', '2', '3', '3'];

Widget buildCarousel(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: PageView.builder(
          itemCount: items.length,
          controller: PageController(viewportFraction: 0.7),
          itemBuilder: (BuildContext context, int itemIndex) {
            return FlatButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Center(
                    child: Text(
                      items[itemIndex].toString(),
                      // items.toString(),
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    // color: Colors.lightBlue,
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
