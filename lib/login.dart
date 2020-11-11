import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  Login({
    Key key,
  }) : super(key: key);
  static const routename = '/login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbfbfb),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-2.0, 0.1),
            child: SvgPicture.string(
              _svg_ryrfi8,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(48.0, 233.0),
            child: Container(
              width: 318.0,
              height: 350.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xc4ffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(76.0, 314.0),
            child: Container(
              // width: 263.0,
              height: 52.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(76.0, 415.0),
            child: Container(
              width: 263.0,
              height: 52.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(86.0, 283.0),
            child: Text(
              'Username',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xbf707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(85.0, 383.0),
            child: Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xc4707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(250.0, 491.0),
            child: Container(
              width: 89.0,
              height: 48.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0x8cf2da63), const Color(0x8cff0000)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(267.0, 501.0),
            child: Text(
              'Log In',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0x8ff3ebeb),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(156.0, 179.0),
            child: Container(
              width: 102.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0x8fffffff), const Color(0x8fce6a6a)],
                  stops: [0.0, 1.0],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x17000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(181.0, 200.8),
            child:
                // Adobe XD layer: 'lock-24px' (group)
                SizedBox(
              width: 53.0,
              height: 54.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 53.0, 53.9),
                    size: Size(53.0, 53.9),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_d0f2eq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.0, 1.0, 45.0, 50.9),
                    size: Size(53.0, 53.9),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_n40smy,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(98.0, 0.0),
            child:
                // Adobe XD layer: 'undraw_confidential…' (shape)
                Container(
              width: 218.0,
              height: 175.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/postic.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(85.0, 470.0),
            child: Text(
              'lupa Password?',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 18,
                color: const Color(0xab1220ef),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ryrfi8 =
    '<svg viewBox="-2.0 0.1 416.4 735.9" ><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(-2.0, 3.0)" d="M 0 249.2318572998047 C 0 249.2318572998047 138.8133850097656 303.2583923339844 257.3831176757813 217.0731964111328 C 375.9528503417969 130.8880310058594 416.4400939941406 181.0555114746094 416.4400939941406 181.0555114746094 L 416.4400939941406 -2.891945123672485 L 0 -2.891945123672485 L 0 249.2318572998047 Z" fill="#ff0000" fill-opacity="0.57" stroke="none" stroke-width="1" stroke-opacity="0.73" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="6"/></filter></defs><path  d="M 0 615.9843139648438 C 0 615.9843139648438 186.5304260253906 689.7289428710938 270.3968505859375 594.2947387695313 C 354.2632751464844 498.8605346679688 413.5481567382813 543.6856689453125 413.5481567382813 543.6856689453125 L 413.5481567382813 736 L 0 736 L 0 615.9843139648438 Z" fill="#f86767" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_d0f2eq =
    '<svg viewBox="0.0 0.0 53.0 53.9" ><path  d="M 0 0 L 53 0 L 53 53.9351806640625 L 0 53.9351806640625 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n40smy =
    '<svg viewBox="4.0 1.0 45.0 50.9" ><path  d="M 43.37500381469727 17.97839546203613 L 40.5625 17.97839546203613 L 40.5625 13.12742519378662 C 40.5625 6.433086395263672 34.26250076293945 1 26.5 1 C 18.73749923706055 1 12.43749904632568 6.433086395263672 12.43749904632568 13.12742519378662 L 12.43749904632568 17.97839546203613 L 9.625 17.97839546203613 C 6.531250476837158 17.97839546203613 4 20.16132926940918 4 22.82936477661133 L 4 47.08421325683594 C 4 49.75224685668945 6.531250476837158 51.9351806640625 9.625 51.9351806640625 L 43.37500381469727 51.9351806640625 C 46.46875 51.9351806640625 49 49.75224685668945 49 47.08421325683594 L 49 22.82936477661133 C 49 20.16132926940918 46.46875 17.97839546203613 43.37500381469727 17.97839546203613 Z M 26.5 39.80775451660156 C 23.40624809265137 39.80775451660156 20.87499809265137 37.62482070922852 20.87499809265137 34.95679092407227 C 20.87499809265137 32.28875350952148 23.40624809265137 30.10581970214844 26.5 30.10581970214844 C 29.59375 30.10581970214844 32.12500381469727 32.28875350952148 32.12500381469727 34.95679092407227 C 32.12500381469727 37.62482070922852 29.59375 39.80775451660156 26.5 39.80775451660156 Z M 35.21875 17.97839546203613 L 17.78124809265137 17.97839546203613 L 17.78124809265137 13.12742519378662 C 17.78124809265137 8.979846000671387 21.69062423706055 5.608421802520752 26.5 5.608421802520752 C 31.30937576293945 5.608421802520752 35.21875 8.979846000671387 35.21875 13.12742519378662 L 35.21875 17.97839546203613 Z" fill="#ffebeb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
