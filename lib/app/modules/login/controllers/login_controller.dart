import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dio/dio.dart' as dio;
import 'package:ukkspesial/app/data/model/response_login.dart';
import '../../../data/constant/endpoint.dart';
import '../../../data/provider/api_provider.dart';
import '../../../data/provider/storage_provider.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final loading = false.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    String? status = StorageProvider.read(StorageKey.status);
    log("Status : $status");
    if (status == "logged") {
      Get.offAllNamed(Routes.HOME);
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  login() async {
    loading(true);
    try {
      FocusScope.of(Get.context!).unfocus(); // nge close keyboard
      formKey.currentState?.save();
      if (formKey.currentState!.validate()) {
        final response =
            await ApiProvider.instance().post(Endpoint.login, data: {
          "email": EmailController.text.toString(),
          "password": PasswordController.text.toString()
        });
        if (response.statusCode == 200) {
          ResponseLogin responseLogin = ResponseLogin.fromJson(response.data);
        print(responseLogin.data!.userID != null);
        log("Geusan");
          if (responseLogin.data != null && responseLogin.data!.userID != null) {
            await StorageProvider.write(
                StorageKey.iduser, responseLogin.data!.userID!.toString());
            await StorageProvider.write(StorageKey.status, "logged");
            Get.offAllNamed(Routes.LAYOUT);
          }
        }
      } else {
        Get.snackbar("Sorry", "Login Gagal", backgroundColor: Colors.orange);
      }
      loading(false);
    } on dio.DioException catch (e) {
      loading(false);
      if (e.response != null) {
        if (e.response?.data != null) {
          Get.snackbar("Sorry", "${e.response?.data['message']}",
              backgroundColor: Colors.orange);
        }
      } else {
        Get.snackbar("Sorry", e.message ?? "", backgroundColor: Colors.red);
      }
    } catch (e) {
      loading(false);
      Get.snackbar("Error", e.toString(), backgroundColor: Colors.red);
    }
  }
}
