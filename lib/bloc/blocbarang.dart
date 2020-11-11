import 'package:kanvas/model/modelBarang.dart';
import 'package:kanvas/repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class BlocBarang {
  final repository = Repository();
  final _fetchBarang = PublishSubject<List<ModelBarang>>();
  // deklarasi barang untuk disimpan
  final _namaBarang = BehaviorSubject<String>();
  final _satuanBarang = BehaviorSubject<String>();
  final _jumlahBarang = BehaviorSubject<String>();
  final _hargaJual = BehaviorSubject<String>();
  final _hargaModal = BehaviorSubject<String>();

  Observable<List<ModelBarang>> get semuaDataBarang => _fetchBarang.stream;
  // function simpan
  Function(String) get namaBarang => _namaBarang.sink.add;
  Function(String) get satuanBarang => _satuanBarang.sink.add;
  Function(String) get jumlahBarang => _jumlahBarang.sink.add;
  Function(String) get hargaJual => _hargaJual.sink.add;
  Function(String) get hargaModal => _hargaModal.sink.add;

  tambahBarang() {
    repository.tambahDataBarang(_namaBarang.value, _satuanBarang.value,
        _jumlahBarang.value, _hargaJual.value, _hargaModal.value);
  }

  // update barang
  updateBarang(String idBarang) {
    repository.editDataBarang(
        _namaBarang.value,
        _satuanBarang.value,
        _jumlahBarang.value,
        _hargaJual.value,
        _hargaModal.value,
        idBarang.toString());
  }

  // hapus barang
  deleteBarang(String idBarang) {
    repository.hapusDataBarang(idBarang.toString());
  }

  // panggil barang
  fetchAllBarang() async {
    List<ModelBarang> listBarang = await repository.fetchAllBarang();

    _fetchBarang.sink.add(listBarang);
  }

  // aksi mematikan perintah tampil data
  dispose() {
    _fetchBarang.close();
  }
}

final blocBarang = BlocBarang();
