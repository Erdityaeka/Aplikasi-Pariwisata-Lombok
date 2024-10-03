class PariwisataList {
  String? nama;
  String? alamat;
  String? deskripsi;
  String? foto;

  PariwisataList({this.nama, this.alamat, this.deskripsi, this.foto});

  PariwisataList.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    alamat = json['alamat'];
    deskripsi = json['deskripsi'];
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nama'] = nama;
    data['alamat'] = alamat;
    data['deskripsi'] = deskripsi;
    data['foto'] = foto;
    return data;
  }
}
