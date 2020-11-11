class ModelBarang {
  int id_barang;
  String nama_barang;
  String jumlah_barang;
  String satuan_barang;
  String harga_jual;
  String harga_modal;

  ModelBarang(
      {this.nama_barang,
      this.satuan_barang,
      this.jumlah_barang,
      this.harga_jual,
      this.harga_modal});

  factory ModelBarang.fromMap(Map<String, dynamic> obj) => ModelBarang(
      nama_barang: obj['nama_barang'],
      satuan_barang: obj['satuan_barang'],
      jumlah_barang: obj['jumlah_barang'],
      harga_jual: obj['harga_jual'],
      harga_modal: obj['harga_modal']);

  Map<String, dynamic> toMap() => {
        "nama_barang": nama_barang,
        "satuan_barang": satuan_barang,
        "jumlah_barang": jumlah_barang,
        "harga_jual": harga_jual,
        "harga_modal": harga_modal
      };

  void setIdBarang(int id_barang) {
    this.id_barang = id_barang;
  }
}
