import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Center(child: Text("BTU TASK1", textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0,)))), body: Center(child: UpdateImg())));
  }
}

class UpdateImg extends StatefulWidget {
  UpdateImgState createState() => UpdateImgState();
}

class UpdateImgState extends State {
  String imgHolder = 'https://lh3.googleusercontent.com/proxy/sOQRgyaV0inmQDCEY4CwLzhRN_IG73HhqGof11ABvB3K27x7dM2ykLEAVlZIFBbDSZeKXbsmd8Fg2ZXjk0455oY';
  String textHolder = 'Earth';

  changeImg() {
    setState(() {
      textHolder = 'Earth';
      imgHolder = 'https://lh3.googleusercontent.com/proxy/sOQRgyaV0inmQDCEY4CwLzhRN_IG73HhqGof11ABvB3K27x7dM2ykLEAVlZIFBbDSZeKXbsmd8Fg2ZXjk0455oY';
    });
  }

  changeImg2() {
    setState(() {
      textHolder = 'Moon';
      imgHolder = 'https://pngimg.com/uploads/moon/moon_PNG10.png';
    });
  }

  changeImg3() {
    setState(() {
      textHolder = 'Mars';
      imgHolder = 'https://pngimg.com/uploads/mars_planet/mars_planet_PNG23.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 0), child: Text('$textHolder', style: TextStyle( fontSize: 50.0, ))),
      Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 60), child: Image.network('$imgHolder')),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
            onPressed: () => changeImg(),
            child: Text('Earth',
                style: TextStyle(
                  fontSize: 30.0,
                )),
            textColor: Colors.white,
            color: Colors.blue,
          ),
          RaisedButton(
            onPressed: () => changeImg2(),
            child: Text('Moon',
                style: TextStyle(
                  fontSize: 30.0,
                )),
            textColor: Colors.white,
            color: Colors.grey,
          ),
          RaisedButton(
            onPressed: () => changeImg3(),
            child: Text('Mars',
                style: TextStyle(
                  fontSize: 30.0,
                )),
            textColor: Colors.white,
            color: Colors.red,
          ),
        ],
      )
    ])));
  }
}


