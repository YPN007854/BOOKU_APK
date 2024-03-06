/// status : 201
/// message : "success"
/// data : {"nama":"said","username":"said","telp":"085","alamat":"alamat","role":"PEMINJAM","updated_at":"2024-01-09T05:36:44.000000Z","created_at":"2024-01-09T05:36:44.000000Z","id":2}

class RegisterResponse {
  RegisterResponse({
      this.status, 
      this.message, 
      this.data,});

  RegisterResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? status;
  String? message;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// nama : "said"
/// username : "said"
/// telp : "085"
/// alamat : "alamat"
/// role : "PEMINJAM"
/// updated_at : "2024-01-09T05:36:44.000000Z"
/// created_at : "2024-01-09T05:36:44.000000Z"
/// id : 2

class Data {
  Data({
      this.nama, 
      this.username, 
      this.telp, 
      this.alamat, 
      this.role, 
      this.updatedAt, 
      this.createdAt, 
      this.id,});

  Data.fromJson(dynamic json) {
    nama = json['nama'];
    username = json['username'];
    telp = json['telp'];
    alamat = json['alamat'];
    role = json['role'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
  String? nama;
  String? username;
  String? telp;
  String? alamat;
  String? role;
  String? updatedAt;
  String? createdAt;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['nama'] = nama;
    map['username'] = username;
    map['telp'] = telp;
    map['alamat'] = alamat;
    map['role'] = role;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }

}