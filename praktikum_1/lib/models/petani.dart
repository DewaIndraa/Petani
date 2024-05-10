class Petani {
  final String? idPenjual;
  final String? idKelompokTani;
  final String? nama;
  final String? nik;
  final String? alamat;
  final String? telp;
  final String? foto;
  final String? status;
  final String? namaKelompok;
  final int usia;
  final String pekerjaan;

  Petani({
    this.idPenjual,
    this.idKelompokTani,
    this.nama,
    this.nik,
    this.alamat,
    this.telp,
    this.foto,
    this.status,
    this.namaKelompok,
    required this.usia,
    required this.pekerjaan,
  });

  factory Petani.fromJson(Map<String, dynamic> json) {
    return Petani(
      idPenjual: json['idPenjual'],
      idKelompokTani: json['idKelompokTani'],
      nama: json['nama'],
      nik: json['nik'],
      alamat: json['alamat'],
      telp: json['telp'],
      foto: json['foto'],
      status: json['status'],
      namaKelompok: json['namaKelompok'],
      usia: json['usia'] as int,
      pekerjaan: json['pekerjaan'],
    );
  }
}