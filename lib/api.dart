import 'dart:convert';

import 'package:http/http.dart';
import 'package:kanvas/model/modelBarang.dart';

class Api {
  Client client = Client();
  final url = 'http://192.168.100.6/kanvas';
// api tampil data barang
  Future<List<ModelBarang>> fetchBarang() async {
    List<ModelBarang> listBarang = List();
    final result = await client.get('$url/getdatabarang.php');
    if (result.statusCode == 200) {
      var databarang = jsonDecode(result.body);

      for (int i = 0; i < databarang.length; i++) {
        var modelBarang = ModelBarang(
            nama_barang: databarang[i]["nama_barang"],
            satuan_barang: databarang[i]["satuan_barang"],
            jumlah_barang: databarang[i]["jumlah_barang"],
            harga_jual: databarang[i]["harga_jual"],
            harga_modal: databarang[i]["harga_modal"]);

        int id = int.parse(databarang[i]["id_barang"]);
        modelBarang.setIdBarang(id);

        listBarang.add(modelBarang);
      }
      return listBarang;
    } else {
      return [];
    }
  }

// api simpan data barang
  Future simpanDataBarang(String namaBarang, String satuanBarang,
      String jumlahBarang, String hargaJual, String hargaModal) async {
    final response = await client.post('$url/postdatabarang.php', body: {
      'nama_barang': namaBarang,
      'satuan_barang': satuanBarang,
      'jumlah_barang': jumlahBarang,
      'harga_jual': hargaJual,
      'harga_modal': hargaModal
    });
    if (response.statusCode == 200) {
      print('success');
    }
  }

// api edit data barang
  Future editDataBarang(
      String namaBarang,
      String satuanBarang,
      String jumlahBarang,
      String hargaJual,
      String hargaModal,
      String idBarang) async {
    final res = await client.post('$url/updatedatabarang.php', body: {
      'nama_barang': namaBarang,
      'satuan_barang': satuanBarang,
      'jumlah_barang': jumlahBarang,
      'harga_jual': hargaJual,
      'harga_modal': hargaModal,
      'id_barang': idBarang.toString()
    });
    if (res.statusCode == 200) {
      print('success');
    } else {
      print('success');
    }
  }

// api hapus data barang
  Future hapusDataBarang(String idBarang) async {
    final response = await client.post('$url/deletedatabarang.php',
        body: {'id_barang': idBarang.toString()});
    if (response.statusCode == 200) {
      print("success");
    } else {
      print("error");
    }
  }
}
