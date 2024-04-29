/// data : {"UserID":1,"Username":"yyk","Email":"yoyokpn123@gmail.com","Password":"$2y$12$.LjwCu0wgOeIaHDV6182u.fhChub2zFJGxuciE.kab5LXSwPJHvXy","NamaLengkap":"yoyok prasetyo nugroho","Alamat":"Jati","created_at":"2024-03-27T03:09:07.000000Z","updated_at":"2024-03-27T03:09:07.000000Z","koleksi_pribadis":null,"peminjamans":[{"peminjamanid":1,"bukuid":1,"userid":1,"tanggal_peminjaman":"2024-03-27","tanggal_pengembalian":"2024-03-29","status_peminjaman":"dipinjam","created_at":"2024-03-27T03:29:09.000000Z","updated_at":"2024-03-27T03:29:09.000000Z","bukus":{"bukuid":1,"judul_buku":"Si Juki 2","penulis":"Juldan","penerbit":"JuldanMedia","tahun_terbit":2014,"cover":null,"status":"dipinjam","created_at":"2024-03-27T03:05:52.000000Z","updated_at":"2024-03-27T03:29:09.000000Z"}}],"ulasan_bukus":[{"ulasanid":1,"bukuid":1,"userid":1,"ulasan":"geusan","rating":5,"created_at":"2024-03-28T06:15:19.000000Z","updated_at":"2024-03-28T06:15:19.000000Z"}],"bukus":[{"bukuid":1,"judul_buku":"Si Juki 2","penulis":"Juldan","penerbit":"JuldanMedia","tahun_terbit":2014,"cover":null,"status":"dipinjam","created_at":"2024-03-27T03:05:52.000000Z","updated_at":"2024-03-27T03:29:09.000000Z"}]}

class ResponseDetailUser {
  ResponseDetailUser({
      this.data,});

  ResponseDetailUser.fromJson(dynamic json) {
    data = json['data'] != null ? DataDetailUser.fromJson(json['data']) : null;
  }
  DataDetailUser? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// UserID : 1
/// Username : "yyk"
/// Email : "yoyokpn123@gmail.com"
/// Password : "$2y$12$.LjwCu0wgOeIaHDV6182u.fhChub2zFJGxuciE.kab5LXSwPJHvXy"
/// NamaLengkap : "yoyok prasetyo nugroho"
/// Alamat : "Jati"
/// created_at : "2024-03-27T03:09:07.000000Z"
/// updated_at : "2024-03-27T03:09:07.000000Z"
/// koleksi_pribadis : null
/// peminjamans : [{"peminjamanid":1,"bukuid":1,"userid":1,"tanggal_peminjaman":"2024-03-27","tanggal_pengembalian":"2024-03-29","status_peminjaman":"dipinjam","created_at":"2024-03-27T03:29:09.000000Z","updated_at":"2024-03-27T03:29:09.000000Z","bukus":{"bukuid":1,"judul_buku":"Si Juki 2","penulis":"Juldan","penerbit":"JuldanMedia","tahun_terbit":2014,"cover":null,"status":"dipinjam","created_at":"2024-03-27T03:05:52.000000Z","updated_at":"2024-03-27T03:29:09.000000Z"}}]
/// ulasan_bukus : [{"ulasanid":1,"bukuid":1,"userid":1,"ulasan":"geusan","rating":5,"created_at":"2024-03-28T06:15:19.000000Z","updated_at":"2024-03-28T06:15:19.000000Z"}]
/// bukus : [{"bukuid":1,"judul_buku":"Si Juki 2","penulis":"Juldan","penerbit":"JuldanMedia","tahun_terbit":2014,"cover":null,"status":"dipinjam","created_at":"2024-03-27T03:05:52.000000Z","updated_at":"2024-03-27T03:29:09.000000Z"}]

class DataDetailUser {
  DataDetailUser({
      this.userID, 
      this.username, 
      this.email, 
      this.password, 
      this.namaLengkap, 
      this.alamat, 
      this.createdAt, 
      this.updatedAt, 
      this.koleksiPribadis, 
      this.peminjamans, 
      this.ulasanBukus, 
      this.bukus,});

  DataDetailUser.fromJson(dynamic json) {
    userID = json['UserID'];
    username = json['Username'];
    email = json['Email'];
    password = json['Password'];
    namaLengkap = json['NamaLengkap'];
    alamat = json['Alamat'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    koleksiPribadis = json['koleksi_pribadis'];
    if (json['peminjamans'] != null) {
      peminjamans = [];
      json['peminjamans'].forEach((v) {
        peminjamans?.add(Peminjamans.fromJson(v));
      });
    }
    if (json['ulasan_bukus'] != null) {
      ulasanBukus = [];
      json['ulasan_bukus'].forEach((v) {
        ulasanBukus?.add(UlasanBukus.fromJson(v));
      });
    }
    if (json['bukus'] != null) {
      bukus = [];
      json['bukus'].forEach((v) {
        bukus?.add(Bukus.fromJson(v));
      });
    }
  }
  int? userID;
  String? username;
  String? email;
  String? password;
  String? namaLengkap;
  String? alamat;
  String? createdAt;
  String? updatedAt;
  dynamic koleksiPribadis;
  List<Peminjamans>? peminjamans;
  List<UlasanBukus>? ulasanBukus;
  List<Bukus>? bukus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['UserID'] = userID;
    map['Username'] = username;
    map['Email'] = email;
    map['Password'] = password;
    map['NamaLengkap'] = namaLengkap;
    map['Alamat'] = alamat;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['koleksi_pribadis'] = koleksiPribadis;
    if (peminjamans != null) {
      map['peminjamans'] = peminjamans?.map((v) => v.toJson()).toList();
    }
    if (ulasanBukus != null) {
      map['ulasan_bukus'] = ulasanBukus?.map((v) => v.toJson()).toList();
    }
    if (bukus != null) {
      map['bukus'] = bukus?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// bukuid : 1
/// judul_buku : "Si Juki 2"
/// penulis : "Juldan"
/// penerbit : "JuldanMedia"
/// tahun_terbit : 2014
/// cover : null
/// status : "dipinjam"
/// created_at : "2024-03-27T03:05:52.000000Z"
/// updated_at : "2024-03-27T03:29:09.000000Z"

class Bukus {
  Bukus({
      this.bukuid, 
      this.judulBuku, 
      this.penulis, 
      this.penerbit, 
      this.tahunTerbit, 
      this.cover, 
      this.status, 
      this.createdAt, 
      this.updatedAt,});

  Bukus.fromJson(dynamic json) {
    bukuid = json['bukuid'];
    judulBuku = json['judul_buku'];
    penulis = json['penulis'];
    penerbit = json['penerbit'];
    tahunTerbit = json['tahun_terbit'];
    cover = json['cover'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? bukuid;
  String? judulBuku;
  String? penulis;
  String? penerbit;
  int? tahunTerbit;
  dynamic cover;
  String? status;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bukuid'] = bukuid;
    map['judul_buku'] = judulBuku;
    map['penulis'] = penulis;
    map['penerbit'] = penerbit;
    map['tahun_terbit'] = tahunTerbit;
    map['cover'] = cover;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}

/// ulasanid : 1
/// bukuid : 1
/// userid : 1
/// ulasan : "geusan"
/// rating : 5
/// created_at : "2024-03-28T06:15:19.000000Z"
/// updated_at : "2024-03-28T06:15:19.000000Z"

class UlasanBukus {
  UlasanBukus({
      this.ulasanid, 
      this.bukuid, 
      this.userid, 
      this.ulasan, 
      this.rating, 
      this.createdAt, 
      this.updatedAt,});

  UlasanBukus.fromJson(dynamic json) {
    ulasanid = json['ulasanid'];
    bukuid = json['bukuid'];
    userid = json['userid'];
    ulasan = json['ulasan'];
    rating = json['rating'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? ulasanid;
  int? bukuid;
  int? userid;
  String? ulasan;
  int? rating;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ulasanid'] = ulasanid;
    map['bukuid'] = bukuid;
    map['userid'] = userid;
    map['ulasan'] = ulasan;
    map['rating'] = rating;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}

/// peminjamanid : 1
/// bukuid : 1
/// userid : 1
/// tanggal_peminjaman : "2024-03-27"
/// tanggal_pengembalian : "2024-03-29"
/// status_peminjaman : "dipinjam"
/// created_at : "2024-03-27T03:29:09.000000Z"
/// updated_at : "2024-03-27T03:29:09.000000Z"
/// bukus : {"bukuid":1,"judul_buku":"Si Juki 2","penulis":"Juldan","penerbit":"JuldanMedia","tahun_terbit":2014,"cover":null,"status":"dipinjam","created_at":"2024-03-27T03:05:52.000000Z","updated_at":"2024-03-27T03:29:09.000000Z"}

class Peminjamans {
  Peminjamans({
      this.peminjamanid, 
      this.bukuid, 
      this.userid, 
      this.tanggalPeminjaman, 
      this.tanggalPengembalian, 
      this.statusPeminjaman, 
      this.createdAt, 
      this.updatedAt, 
      this.bukus,});

  Peminjamans.fromJson(dynamic json) {
    peminjamanid = json['peminjamanid'];
    bukuid = json['bukuid'];
    userid = json['userid'];
    tanggalPeminjaman = json['tanggal_peminjaman'];
    tanggalPengembalian = json['tanggal_pengembalian'];
    statusPeminjaman = json['status_peminjaman'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    bukus = json['bukus'] != null ? PeminjamanBukus.fromJson(json['bukus']) : null;
  }
  int? peminjamanid;
  int? bukuid;
  int? userid;
  String? tanggalPeminjaman;
  String? tanggalPengembalian;
  String? statusPeminjaman;
  String? createdAt;
  String? updatedAt;
  PeminjamanBukus? bukus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['peminjamanid'] = peminjamanid;
    map['bukuid'] = bukuid;
    map['userid'] = userid;
    map['tanggal_peminjaman'] = tanggalPeminjaman;
    map['tanggal_pengembalian'] = tanggalPengembalian;
    map['status_peminjaman'] = statusPeminjaman;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (bukus != null) {
      map['bukus'] = bukus?.toJson();
    }
    return map;
  }

}

/// bukuid : 1
/// judul_buku : "Si Juki 2"
/// penulis : "Juldan"
/// penerbit : "JuldanMedia"
/// tahun_terbit : 2014
/// cover : null
/// status : "dipinjam"
/// created_at : "2024-03-27T03:05:52.000000Z"
/// updated_at : "2024-03-27T03:29:09.000000Z"

class PeminjamanBukus {
  PeminjamanBukus({
      this.bukuid, 
      this.judulBuku, 
      this.penulis, 
      this.penerbit, 
      this.tahunTerbit, 
      this.cover, 
      this.status, 
      this.createdAt, 
      this.updatedAt,});

  PeminjamanBukus.fromJson(dynamic json) {
    bukuid = json['bukuid'];
    judulBuku = json['judul_buku'];
    penulis = json['penulis'];
    penerbit = json['penerbit'];
    tahunTerbit = json['tahun_terbit'];
    cover = json['cover'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? bukuid;
  String? judulBuku;
  String? penulis;
  String? penerbit;
  int? tahunTerbit;
  dynamic cover;
  String? status;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bukuid'] = bukuid;
    map['judul_buku'] = judulBuku;
    map['penulis'] = penulis;
    map['penerbit'] = penerbit;
    map['tahun_terbit'] = tahunTerbit;
    map['cover'] = cover;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}