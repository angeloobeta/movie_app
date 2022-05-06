import 'package:flutter/material.dart';
import 'package:movie_app/screen/screen4.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Screen3");

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 3"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                print(Navigator.of(context).canPop().toString());
              },
              child: Text("Can Pop"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: Text("Maybe Pop"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/screen4');
              },
              child: Text("Push Replacement Named"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/screen4');
              },
              child: Text("pop and Push Named"),
            ),
            SizedBox(
              height: 10.0,
            ),
            Image(
              image: AssetImage(""),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/screen4', ModalRoute.withName('/screen1'));
                // Navigator.of(context).pushNamedAndRemoveUntil('/screen4', (Route<dynamic> route) => false);
              },
              child: Text("Push Named and Remove Until"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) => Screen4()),
                    ModalRoute.withName('/screen1'));
              },
              child: Text("Push and Remove Until"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/screen4');
              },
              child: Text("Push to Screen 4"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        opaque: false,
                        pageBuilder: (BuildContext context, _, __) {
                          return Scaffold(
                            body: Center(
                              child: Container(
                                  child: Center(child: Text('My PageRoute'))),
                            ),
                          );
                        },
                        transitionsBuilder: (___, Animation<double> animation,
                            ____, Widget child) {
                          return FadeTransition(
                            opacity: animation,
                            child: RotationTransition(
                              turns: Tween<double>(begin: 0.5, end: 1.0)
                                  .animate(animation),
                              child: child,
                            ),
                          );
                        }));
              },
              child: Text("Page Route Builder"),
            ),
          ],
        ),
      ),
    );
  }
}
