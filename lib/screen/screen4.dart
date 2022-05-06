import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Screen4");

    return Scaffold(
      // 1
      appBar: AppBar(
        title: Text("Screen 4"),
      ),
      body: Center(
        // 3
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/screen2'));
              },
              child: Text("popUntil"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () async {
                String value = await Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Center(
                    child: GestureDetector(
                        child: Text('OK'),
                        onTap: () {
                          Navigator.pop(context, "Audio1");
                        }),
                  );
                }));
                print(value);
              },
              child: Text("Return"),
            )
          ],
        ),
      ),
    );
  }
}
