import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  @override
  createState() => AnimatedOpacityPageState();
}

class AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  double opacity = 1;
  void _fadeLogo() {
    setState(() {
      if (opacity == 1) {
        opacity = 0;
        return;
      }
      opacity = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(size: 200),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: Text('Fade Logo'),
              // TODO: Implement
              onPressed: _fadeLogo,
            ),
          ],
        ),
      ),
    );
  }
}
