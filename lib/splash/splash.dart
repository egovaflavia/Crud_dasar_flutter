import 'package:flutter/material.dart';
import 'package:kanvas/page/Home.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 7)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => Home()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splash.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Image.asset(
                  "assets/car.png",
                  color: Colors.white,
                  height: 100,
                ),
                Text(
                  "Kanvas App",
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  flex: 7,
                  child: SizedBox(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
