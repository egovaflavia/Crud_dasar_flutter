import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:kanvas/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  Home({
    Key key,
  }) : super(key: key);
  static const routename = '/home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static var today = new DateTime.now();
  final bulan = new DateFormat.MMM().format(today);
  final hari = new DateFormat.d().format(today);
  final tahun = new DateFormat.y().format(today);

  void logOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("iduser", null);
      preferences.setInt("namauser", null);
      preferences.commit();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => Login()));
    });
  }

  GestureDetector gestureDetector(nama) {
    return new GestureDetector(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        margin: EdgeInsets.only(top: 10, left: 5, right: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            // background
            Container(
              height: 209.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
                color: const Color(0xa63939f9),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xa6000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
            // card nav
            Transform.translate(
              offset: Offset(0.0, 93.0),
              child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 192.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29ceb9b9),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: GridView.count(
                    crossAxisCount: 4,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(1.0),
                    mainAxisSpacing: 3.0,
                    crossAxisSpacing: 2.0,
                    childAspectRatio: 1,
                    children: <Widget>[
                      gestureDetector('gema'),
                      gestureDetector('gema'),
                    ],
                  )),
            ),
            // card tanggal
            Transform.translate(
              offset: Offset(190.0, 19.0),
              child: Container(
                width: 162.0,
                height: 38.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29a76f6f),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
            // button logout
            Transform.translate(
              offset: Offset(360.0, 19.0),
              child: Container(
                width: 40.0,
                height: 38.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29a76f6f),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () {
                    logOut();
                  },
                  color: Color(0xa63939f9),
                ),
              ),
            ),
            // title home
            Transform.translate(
              offset: Offset(36.0, 23.0),
              child: Text(
                'Point Of Sale',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: const Color(0xfffffefe),
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // card Content
            Transform.translate(
              offset: Offset(0.0, 296.0),
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                height: MediaQuery.of(context).size.height / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x295d5d5d),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
            // tanggal
            Transform.translate(
              offset: Offset(218.0, 27.0),
              child: Text(
                '$hari-$bulan-$tahun',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 18,
                  color: const Color(0xff7e7efb),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
