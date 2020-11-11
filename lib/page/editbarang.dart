import 'package:flutter/material.dart';
import 'package:kanvas/bloc/blocbarang.dart';

import 'myhome.dart';

class EditBarang extends StatefulWidget {
  const EditBarang(
      {Key key,
      this.idBarang,
      this.namaBarang,
      this.satuanBarang,
      this.jumlahBarang,
      this.hargaJual,
      this.hargaModal})
      : super(key: key);
  final String idBarang,
      namaBarang,
      satuanBarang,
      jumlahBarang,
      hargaJual,
      hargaModal;
  @override
  _EditBarangState createState() => _EditBarangState();
}

class _EditBarangState extends State<EditBarang> {
  final _namaBarang = new TextEditingController();
  final _satuanBarang = new TextEditingController();
  final _jumlahBarang = new TextEditingController();
  final _hargaJual = new TextEditingController();
  final _hargaModal = new TextEditingController();

  void setFormValue() {
    _namaBarang.text = widget.namaBarang;
    _satuanBarang.text = widget.satuanBarang;
    _jumlahBarang.text = widget.jumlahBarang;
    _hargaJual.text = widget.hargaJual;
    _hargaModal.text = widget.hargaModal;
  }

  @override
  void initState() {
    setFormValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Barang'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _namaBarang,
                onChanged: blocBarang.namaBarang,
                decoration: InputDecoration(labelText: "Nama Barang"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _satuanBarang,
                onChanged: blocBarang.satuanBarang,
                decoration: InputDecoration(labelText: "Satuan Barang"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _jumlahBarang,
                onChanged: blocBarang.jumlahBarang,
                decoration: InputDecoration(labelText: "Jumlah Barang"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _hargaJual,
                onChanged: blocBarang.hargaJual,
                decoration: InputDecoration(labelText: "Harga Jual"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _hargaModal,
                onChanged: blocBarang.hargaModal,
                decoration: InputDecoration(labelText: "Harga Beli"),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                  onPressed: () {
                    blocBarang.updateBarang(widget.idBarang);
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
