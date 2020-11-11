import 'package:flutter/material.dart';
import 'package:kanvas/bloc/blocbarang.dart';
import 'package:kanvas/page/myhome.dart';

class TambahBarang extends StatefulWidget {
  TambahBarang({Key key}) : super(key: key);
  static const routename = '/tambahbarang';
  @override
  _TambahBarangState createState() => _TambahBarangState();
}

class _TambahBarangState extends State<TambahBarang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Barang'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormField(
                onChanged: blocBarang.namaBarang,
                decoration: InputDecoration(labelText: "Nama Barang"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: blocBarang.satuanBarang,
                decoration: InputDecoration(labelText: "Satuan Barang"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: blocBarang.jumlahBarang,
                decoration: InputDecoration(labelText: "Jumlah Barang"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: blocBarang.hargaJual,
                decoration: InputDecoration(labelText: "Harga Jual"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: blocBarang.hargaModal,
                decoration: InputDecoration(labelText: "Harga Beli"),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                  onPressed: () {
                    blocBarang.tambahBarang();
                    Navigator.pushNamed(context, MyHome.routename);
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Center(
                      child: Text('Simpan'),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
