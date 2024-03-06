class Endpoint {
  //static const String BaseUrlApi = "";
  static const String BaseUrlApi = "http://127.0.0.1:8000/api/";

  // Authentication
  static const String login = "${BaseUrlApi}login";
  static const String register = "${BaseUrlApi}register";

  //Book
  static const String buku = "${BaseUrlApi}buku";
  static const String peminjaman = "${BaseUrlApi}peminjaman";
  static const String kategoribuku = "${BaseUrlApi}kategoribuku";
  static const String kategoribukurelasi = "${BaseUrlApi}kategoribukurelasi";

  //APP
  static const String koleksi = "${BaseUrlApi}koleksi";
  static const String riwayat = "${BaseUrlApi}riwayat";
  static const String ulasan = "${BaseUrlApi}ulasan";
}