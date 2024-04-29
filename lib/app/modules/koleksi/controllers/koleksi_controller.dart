import 'package:ukkspesial/app/data/model/response_koleksi.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constant/endpoint.dart';
import '../../../data/provider/api_provider.dart';

class KoleksiController extends GetxController {
  var index = 1.obs;

  RxList<DataKoleksi>? books = <DataKoleksi>[].obs;


  final loading = false.obs;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();

  }

  void onTap(int index){
    print("Tapped index: $index");
    print("Current index: ${this.index.value}");
    this.index.value = index;
    print("New index: ${this.index.value}");
  }


  Future<void> getData() async {
    loading(true);
    try {
      final response = await ApiProvider.instance().get(
        '${Endpoint.koleksi}', // Removed the user id from the endpoint
      );

      if (response.statusCode == 200) {
        final ResponseKoleksi responseBook = ResponseKoleksi.fromJson(response.data);
        if (responseBook.data != null) {
          books!.value = responseBook.data! as List<DataKoleksi>;
        } else {
          Get.snackbar('Error', 'Data buku kosong untuk kategori yang dipilih', backgroundColor: Colors.red);
        }
      } else {
        Get.snackbar('Error', 'Gagal mengambil data: ${response.data['message']}', backgroundColor: Colors.red);
      }
    } on dio.DioException catch (e) {
      if (e.response != null && e.response?.data != null) {
        books!.value = <DataKoleksi>[];
      } else {
        Get.snackbar('Error', 'Kesalahan terjadi: ${e.message ?? ""}', backgroundColor: Colors.red);
      }
    } catch (e) {
      Get.snackbar('Error', 'Kesalahan terjadi: $e', backgroundColor: Colors.red);
    } finally {
      loading(false);
    }
  }

  Future<void> deleteData(int? id) async {
    loading(false);
    try {
      final response = await ApiProvider.instance().delete(
        '${Endpoint.koleksi}/$id', // Endpoint to delete data with a specific ID
      );

      if (response.statusCode == 200) {
        Get.snackbar('Berhasil','Koleksi buku berhasil dihapus', backgroundColor: Colors.green);
      } else {
        Get.snackbar('Error', 'Kesalahan terjadi: Gagal mengapus koleksi', backgroundColor: Colors.red);
      }
    } catch (e) {
      Get.snackbar('Error', 'Kesalahan terjadi: $e', backgroundColor: Colors.red);
    }
  }
}
