/// data : [{"bukuid":1,"judul_buku":"Rickey","penulis":"Krystina","penerbit":"Dewitt","tahun_terbit":1974,"created_at":"2024-02-29T05:33:24.000000Z","updated_at":"2024-02-29T05:33:24.000000Z"},{"bukuid":2,"judul_buku":"Neil","penulis":"Favian","penerbit":"Jasen","tahun_terbit":1977,"created_at":"2024-02-29T05:33:24.000000Z","updated_at":"2024-02-29T05:33:24.000000Z"},{"bukuid":3,"judul_buku":"Jena","penulis":"Nicholaus","penerbit":"Sierra","tahun_terbit":1992,"created_at":"2024-02-29T05:33:24.000000Z","updated_at":"2024-02-29T05:33:24.000000Z"},{"bukuid":4,"judul_buku":"Rafaela","penulis":"Janick","penerbit":"Jolie","tahun_terbit":2012,"created_at":"2024-02-29T05:33:24.000000Z","updated_at":"2024-02-29T05:33:24.000000Z"},{"bukuid":5,"judul_buku":"Nelson","penulis":"Chet","penerbit":"Emie","tahun_terbit":2010,"created_at":"2024-02-29T05:33:24.000000Z","updated_at":"2024-02-29T05:33:24.000000Z"},{"bukuid":6,"judul_buku":"Norene","penulis":"Leonie","penerbit":"Fleta","tahun_terbit":1976,"created_at":"2024-02-29T05:33:24.000000Z","updated_at":"2024-02-29T05:33:24.000000Z"},{"bukuid":7,"judul_buku":"Onie","penulis":"Ezequiel","penerbit":"Delpha","tahun_terbit":2000,"created_at":"2024-02-29T05:33:24.000000Z","updated_at":"2024-02-29T05:33:24.000000Z"},{"bukuid":8,"judul_buku":"Jasper","penulis":"Tyreek","penerbit":"Maci","tahun_terbit":2016,"created_at":"2024-02-29T05:33:24.000000Z","updated_at":"2024-02-29T05:33:24.000000Z"},{"bukuid":9,"judul_buku":"Dorcas","penulis":"Deon","penerbit":"Maxime","tahun_terbit":1973,"created_at":"2024-02-29T05:33:24.000000Z","updated_at":"2024-02-29T05:33:24.000000Z"},{"bukuid":10,"judul_buku":"Brittany","penulis":"Aaron","penerbit":"Geo","tahun_terbit":1986,"created_at":"2024-02-29T05:33:24.000000Z","updated_at":"2024-02-29T05:33:24.000000Z"}]

class ResponseBuku {
  ResponseBuku({
      this.data,});

  ResponseBuku.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(DataBuku.fromJson(v));
      });
    }
  }
  List<DataBuku>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// bukuid : 1
/// judul_buku : "Rickey"
/// penulis : "Krystina"
/// penerbit : "Dewitt"
/// tahun_terbit : 1974
/// created_at : "2024-02-29T05:33:24.000000Z"
/// updated_at : "2024-02-29T05:33:24.000000Z"

class DataBuku {
  DataBuku({
      this.bukuid, 
      this.judulBuku, 
      this.penulis, 
      this.penerbit, 
      this.tahunTerbit, 
      this.createdAt, 
      this.updatedAt,});

  DataBuku.fromJson(dynamic json) {
    bukuid = json['bukuid'];
    judulBuku = json['judul_buku'];
    penulis = json['penulis'];
    penerbit = json['penerbit'];
    tahunTerbit = json['tahun_terbit'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? bukuid;
  String? judulBuku;
  String? penulis;
  String? penerbit;
  int? tahunTerbit;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bukuid'] = bukuid;
    map['judul_buku'] = judulBuku;
    map['penulis'] = penulis;
    map['penerbit'] = penerbit;
    map['tahun_terbit'] = tahunTerbit;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}