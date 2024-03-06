/// message : "Login Successfully"
/// data : {"UserID":11,"Username":"yoyok","Email":"yoyokpn123@gmail.com","Password":"$2y$12$MqcgdwqIvpxKURgyZRP9UOjtbVhgam3HXxX/79YyIz5fThAbYZGAS","NamaLengkap":"yoyok prasetyo nugroho","Alamat":"jati","created_at":"2024-03-04T08:08:20.000000Z","updated_at":"2024-03-04T08:08:20.000000Z"}

class ResponseLogin {
  ResponseLogin({
      this.message, 
      this.data,});

  ResponseLogin.fromJson(dynamic json) {
    message = json['message'];
    data = json['data'] != null ? DataLogin.fromJson(json['data']) : null;
  }
  String? message;
  DataLogin? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// UserID : 11
/// Username : "yoyok"
/// Email : "yoyokpn123@gmail.com"
/// Password : "$2y$12$MqcgdwqIvpxKURgyZRP9UOjtbVhgam3HXxX/79YyIz5fThAbYZGAS"
/// NamaLengkap : "yoyok prasetyo nugroho"
/// Alamat : "jati"
/// created_at : "2024-03-04T08:08:20.000000Z"
/// updated_at : "2024-03-04T08:08:20.000000Z"

class DataLogin {
  DataLogin({
      this.userID, 
      this.username, 
      this.email, 
      this.password, 
      this.namaLengkap, 
      this.alamat, 
      this.createdAt, 
      this.updatedAt,});

  DataLogin.fromJson(dynamic json) {
    userID = json['UserID'];
    username = json['Username'];
    email = json['Email'];
    password = json['Password'];
    namaLengkap = json['NamaLengkap'];
    alamat = json['Alamat'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? userID;
  String? username;
  String? email;
  String? password;
  String? namaLengkap;
  String? alamat;
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
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}