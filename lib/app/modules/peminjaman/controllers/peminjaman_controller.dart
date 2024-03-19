import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ukkspesial/app/data/constant/endpoint.dart';
import 'package:ukkspesial/app/data/model/response_peminjaman.dart';
import 'package:ukkspesial/app/data/provider/api_provider.dart';
import 'package:ukkspesial/app/data/provider/storage_provider.dart';

class PeminjamanController extends GetxController with StateMixin<DataPinjam> {
  final loading = false.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController tanggalPinjamController = TextEditingController();
  final TextEditingController tanggalKembaliController =
      TextEditingController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  post() async {
    loading(true);
    try {
      FocusScope.of(Get.context!).unfocus(); // nge close keyboard
      formKey.currentState?.save();
      if (formKey.currentState!.validate()) {
        final response =
            await ApiProvider.instance().post(Endpoint.peminjaman, data: {
          "userid": int.parse(StorageProvider.read(StorageKey.iduser)),
          "bukuid": int.parse(Get.parameters['id'].toString()),
          "tanggal_peminjaman": tanggalPinjamController.text.toString(),
          "tanggal_pengembalian": tanggalKembaliController.text.toString(),
        });
        if (response.statusCode == 200) {
          Get.back();
        } else {
          Get.snackbar("Sory", "Add Peminjaman Gagal",
              backgroundColor: Colors.orange);
        }
      }
      loading(false);
    } on DioException catch (e) {
      loading(false);
      if (e.response != null) {
        if (e.response?.data != null) {
          log("1 : ${e.toString()}");
          Get.snackbar("Sorry", "${e.response?.data['message']}",
              backgroundColor: Colors.orange);
        }
      } else {
        Get.snackbar("Sorry", e.message ?? "", backgroundColor: Colors.red);
        log("2 : ${e.toString()}");
      }
    } catch (e) {
      loading(false);
      log("3 : ${e.toString()}");
      Get.snackbar("Error", e.toString(), backgroundColor: Colors.red);
    }
  }
}
