import 'package:data_kita/constants/colors_app.dart';
import 'package:data_kita/view/test_view.dart';
import 'package:data_kita/widgets/sponsor_widget.dart';
import 'package:data_kita/widgets/bottom_app_bar.dart';
import 'package:data_kita/widgets/floating_Button.dart';
import 'package:data_kita/widgets/icon_menu.dart';
import 'package:data_kita/widgets/icon_template.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingButtonWidget(),
      bottomNavigationBar: BottomAppBarWidget(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          IconTemplate(),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                sponsorWidget(context, sponsorColor),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconMenu('Share', TestView()),
                    IconMenu('Collect', TestView()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconMenu('Delete', TestView()),
                    IconMenu('Change', TestView()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
