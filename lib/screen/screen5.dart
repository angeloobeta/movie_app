import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  final String userName;
  Screen5(this.userName);
  @override
  Widget build(BuildContext context) {
    print("Screen5");

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 5"),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Hi " + userName),
          ],
        ),
      ),
    );
  }
}
