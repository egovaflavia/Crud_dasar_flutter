import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kanvas/bloc/blocbarang.dart';
import 'package:kanvas/page/editbarang.dart';
import 'package:kanvas/page/tambahbarang.dart';

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);
  static const routename = '/myhome';
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Timer timer;
  @override
  void initState() {
    blocBarang.fetchAllBarang();

    timer = Timer.periodic(
        Duration(milliseconds: 500), (timer) => blocBarang.fetchAllBarang());
    super.initState();
  }

  @override
  void dispose() {
    blocBarang.dispose();
    if (timer.isActive) timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter BLOC'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, TambahBarang.routename);
            },
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: StreamBuilder(
          stream: blocBarang.semuaDataBarang,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length ?? null,
                itemBuilder: (context, i) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(snapshot.data[i].nama_barang),
                        SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: Row(
                            children: <Widget>[
                              Text(snapshot.data[i].jumlah_barang),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(snapshot.data[i].satuan_barang),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(snapshot.data[i].harga_jual),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditBarang(
                                    idBarang:
                                        snapshot.data[i].id_barang.toString(),
                                    namaBarang:
                                        snapshot.data[i].nama_barang.toString(),
                                    satuanBarang: snapshot.data[i].satuan_barang
                                        .toString(),
                                    jumlahBarang: snapshot.data[i].jumlah_barang
                                        .toString(),
                                    hargaJual:
                                        snapshot.data[i].harga_jual.toString(),
                                    hargaModal:
                                        snapshot.data[i].harga_modal.toString(),
                                  ),
                                ));
                              },
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                blocBarang.deleteBarang(
                                    snapshot.data[i].id_barang.toString());
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
