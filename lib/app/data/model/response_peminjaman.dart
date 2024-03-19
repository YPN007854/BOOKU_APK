/// data : {"peminjamanid":1,"bukuid":1,"userid":1,"tanggal_peminjaman":"2006-01-12","tanggal_pengembalian":"2006-01-13","status_peminjaman":"dipinjam","created_at":"2024-03-19T03:54:20.000000Z","updated_at":"2024-03-19T03:54:20.000000Z"}

class ResponsePeminjaman {
  ResponsePeminjaman({
      this.data,});

  ResponsePeminjaman.fromJson(dynamic json) {
    data = json['data'] != null ? DataPinjam.fromJson(json['data']) : null;
  }
  DataPinjam? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// peminjamanid : 1
/// bukuid : 1
/// userid : 1
/// tanggal_peminjaman : "2006-01-12"
/// tanggal_pengembalian : "2006-01-13"
/// status_peminjaman : "dipinjam"
/// created_at : "2024-03-19T03:54:20.000000Z"
/// updated_at : "2024-03-19T03:54:20.000000Z"

class DataPinjam {
  DataPinjam({
      this.peminjamanid, 
      this.bukuid, 
      this.userid, 
      this.tanggalPeminjaman, 
      this.tanggalPengembalian, 
      this.statusPeminjaman, 
      this.createdAt, 
      this.updatedAt,});

  DataPinjam.fromJson(dynamic json) {
    peminjamanid = json['peminjamanid'];
    bukuid = json['bukuid'];
    userid = json['userid'];
    tanggalPeminjaman = json['tanggal_peminjaman'];
    tanggalPengembalian = json['tanggal_pengembalian'];
    statusPeminjaman = json['status_peminjaman'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? peminjamanid;
  int? bukuid;
  int? userid;
  String? tanggalPeminjaman;
  String? tanggalPengembalian;
  String? statusPeminjaman;
  String? createdAt;
  String? updatedAt;

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
    return map;
  }

}