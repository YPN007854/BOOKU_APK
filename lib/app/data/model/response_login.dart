/// message : "Login Successfully"
/// data : {"UserID":1,"Username":"ggss","Email":"geusan@gmail.com","Password":"$2y$12$tFHZhMc0dCJLqIcqOTQbUuNzA8kEp/E.uCk0G1YpWd2XjjpUgd4sK","NamaLengkap":"geusan edurais","Alamat":"UMS","role":"anggota","created_at":"2024-04-18T02:12:01.000000Z","updated_at":"2024-04-18T02:12:01.000000Z"}
/// email : "geusan@gmail.com"
/// role : "anggota"

class ResponseLogin {
  ResponseLogin({
      this.message, 
      this.data, 
      this.email, 
      this.role,});

  ResponseLogin.fromJson(dynamic json) {
    message = json['message'];
    data = json['data'] != null ? DataLogin.fromJson(json['data']) : null;
    email = json['email'];
    role = json['role'];
  }
  String? message;
  DataLogin? data;
  String? email;
  String? role;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['email'] = email;
    map['role'] = role;
    return map;
  }

}

/// UserID : 1
/// Username : "ggss"
/// Email : "geusan@gmail.com"
/// Password : "$2y$12$tFHZhMc0dCJLqIcqOTQbUuNzA8kEp/E.uCk0G1YpWd2XjjpUgd4sK"
/// NamaLengkap : "geusan edurais"
/// Alamat : "UMS"
/// role : "anggota"
/// created_at : "2024-04-18T02:12:01.000000Z"
/// updated_at : "2024-04-18T02:12:01.000000Z"

class DataLogin {
  DataLogin({
      this.userID, 
      this.username, 
      this.email, 
      this.password, 
      this.namaLengkap, 
      this.alamat, 
      this.role, 
      this.createdAt, 
      this.updatedAt,});

  DataLogin.fromJson(dynamic json) {
    userID = json['UserID'];
    username = json['Username'];
    email = json['Email'];
    password = json['Password'];
    namaLengkap = json['NamaLengkap'];
    alamat = json['Alamat'];
    role = json['role'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? userID;
  String? username;
  String? email;
  String? password;
  String? namaLengkap;
  String? alamat;
  String? role;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['UserID'] = userID;
    map['Username'] = username;
    map['Email'] = email;
    map['Password'] = password;
    map['NamaLengkap'] = namaLengkap;
    map['Alamat'] = alamat;
    map['role'] = role;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}