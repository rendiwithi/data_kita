import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // FAB IN FLUTTER
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton:
      //     FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      // bottomNavigationBar: BottomAppBar(
      //     shape: CircularNotchedRectangle(),
      //     child: Container(
      //       height: 56,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: <Widget>[
      //           IconButton(icon: Icon(Icons.home), onPressed: () {}),
      //           IconButton(icon: Icon(Icons.search), onPressed: () {}),
      //           SizedBox(width: 40), // The dummy child
      //           IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
      //           IconButton(icon: Icon(Icons.message), onPressed: () {}),
      //         ],
      //       ),
      //     )),
      appBar: AppBar(
        title: Text('Carousel in vertical scrollable'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Carousel'),
          SizedBox(
            height: 200.0,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.8),
              itemBuilder: (BuildContext context, int itemIndex) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  // Widget _buildCarousel(BuildContext context, int carouselIndex) {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     children: <Widget>[
  //       Text('Carousel $carouselIndex'),
  //       SizedBox(
  //         // you may want to use an aspect ratio here for tablet support
  //         height: 200.0,
  //         child: PageView.builder(
  //           // store this controller in a State to save the carousel scroll position
  //           controller: PageController(viewportFraction: 0.8),
  //           itemBuilder: (BuildContext context, int itemIndex) {
  //             return Padding(
  //               padding: EdgeInsets.symmetric(horizontal: 4.0),
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                   color: Colors.grey,
  //                   borderRadius: BorderRadius.all(Radius.circular(4.0)),
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       )
  //     ],
  //   );
  // }

  // Widget _buildCarouselItem(
  //     BuildContext context, int carouselIndex, int itemIndex) {
  //   return
  // }
}
