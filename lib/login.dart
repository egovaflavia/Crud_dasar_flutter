import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:kanvas/splash/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  Login({
    Key key,
  }) : super(key: key);
  static const routename = '/login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _secureText = true;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  Future<List> _login() async {
    final response = await http.post('http://192.168.1.8/kanvas/login.php',
        body: {'username': username.text, 'password': password.text});
    if (response.statusCode == 200) {
      final _data = jsonDecode(response.body);
      String iduser = _data['id_user'];
      String namauser = _data['nama_user'];
      safePref(iduser, namauser);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Splash()));
    }
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  void safePref(String iduser, String namauser) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("iduser", iduser);
    preferences.setString("nama", namauser);
    preferences.commit();
  }

  void getPref() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      if (sharedPreferences.getString('iduser') != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Splash()));
      }
    });
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xa32128e1),
      body: SafeArea(
        key: formKey,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(120.0),
                  ),
                  color: const Color(0xffffffff),
                ),
              ),
              Transform.translate(
                offset: Offset(107.0, 21.0),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xff676be2),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 250),
                  padding: EdgeInsets.all(20),
                  width: 329.0,
                  height: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        child: TextFormField(
                          controller: username,
                          decoration: InputDecoration(
                            labelText: "Username",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.person),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 60,
                        child: TextFormField(
                          controller: password,
                          obscureText: _secureText,
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: showHide,
                              icon: Icon(_secureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green[100]),
                        child: FlatButton.icon(
                            onPressed: () {
                              _login();
                            },
                            icon: Icon(Icons.login),
                            label: Text("Log In")),
                      )
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(138.0, 163.0),
                child: Text(
                  'Kanvas App',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 25,
                    color: const Color(0xffb8b8bf),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(114.0, 20.0),
                child:
                    // Adobe XD layer: 'mail' (shape)
                    Container(
                  width: 186.0,
                  height: 156.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/mail.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
