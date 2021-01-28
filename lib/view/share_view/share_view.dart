import 'package:data_kita/widgets/floating_Button.dart';
import 'package:flutter/material.dart';

class ShareView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButtonWidget(icon: Icons.arrow_right_alt),
      appBar: AppBar(
        title: Text("Share View"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Share Your Data",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your Username',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your email',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your data Link',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Your Project Link',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
