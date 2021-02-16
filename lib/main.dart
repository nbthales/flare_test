import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  //String _anim = "spin1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      /*child: GestureDetector(
      onTap: () {
          setState(() {
            if (_anim == "spin1")
              _anim = "spin2";
            else
              _anim = "spin1";
          });
        },*/
      child: Container(
        width: 100,
        height: 100,
        child: FlareActor("assets/AnimGears.flr", animation: "spin1" //_anim,
            //isPaused: true,
            ),
      ),
    ));
    // );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    });
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Flutter + Flare",
            style: TextStyle(fontSize: 30.0),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 100,
            width: 100,
            child: FlareActor(
              "assets/AnimHeart.flr",
              animation: "pulse",
            ),
          )
        ],
      ),
    );
  }
}
