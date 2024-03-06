import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ukkspesial/app/routes/app_pages.dart';

import '../../../data/constant/endpoint.dart';
import '../../../data/provider/api_provider.dart';

class RegisterController extends GetxController {
  final loading = false.obs;
  final GlobalKey<FormState> formKey =GlobalKey<FormState>();
  final TextEditingController NamaLengkapController = TextEditingController();
  final TextEditingController UsernameController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  final TextEditingController AlamatController = TextEditingController();


  // final RegisterController registerController = Get.put(RegisterController());


  final count = 0.obs;
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

  register() async {
    loading(true);
    try {
      FocusScope.of(Get.context!).unfocus();// nge close keyboard
      formKey.currentState?.save();
      if (formKey.currentState!.validate()) {
        final response = await ApiProvider.instance().post(Endpoint.register,
            data:
            {
              "NamaLengkap": NamaLengkapController.text.toString(),
              "Username": UsernameController.text.toString(),
              "Email": EmailController.text.toString(),
              "Password": PasswordController.text.toString(),
              "Alamat": AlamatController.text.toString(),
            }
        );
        if (response.statusCode == 200) {
          Get.snackbar("selamat", "anda berhasil");
          Get.offAllNamed(Routes.LOGIN);
        }
      } else {
        Get.snackbar("Sorry", "salah", backgroundColor: Colors.orange);
      }
      loading(false);
    } on DioException catch (e) {
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
