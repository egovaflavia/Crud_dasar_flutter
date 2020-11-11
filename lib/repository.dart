import 'package:kanvas/api.dart';
import 'package:kanvas/model/modelBarang.dart';

class Repository {
  final api = Api();
  // tampil data barang
  Future<List<ModelBarang>> fetchAllBarang() => api.fetchBarang();
  // simpan data barang
  Future tambahDataBarang(String namaBarang, String satuanBarang,
          String jumlahBarang, String hargaJual, String hargaModal) =>
      api.simpanDataBarang(
          namaBarang, satuanBarang, jumlahBarang, hargaJual, hargaModal);

  // edit data barang
  Future editDataBarang(
          String namaBarang,
          String satuanBarang,
          String jumlahBarang,
          String hargaJual,
          String hargaModal,
          String idBarang) =>
      api.editDataBarang(namaBarang, satuanBarang, jumlahBarang, hargaJual,
          hargaModal, idBarang);

  // hapus data barang
  Future hapusDataBarang(String idBarang) => api.hapusDataBarang(idBarang);
}
