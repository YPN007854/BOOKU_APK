import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        color: Color(0x9b04d619),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
            child: Form(
          key: controller.formKey,
          child: SizedBox(
            height: 400,
            child: Column(
              children: [
                Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Image.asset('asset/image/logo.png')),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: 30,
                    child: TextFormField(
                        controller: controller.EmailController,
                        decoration: InputDecoration(
                          hintText: "Masukkan Email",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(20.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Colors.green),
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        validator: (value) {
                          if (value!.length < 3) {
                            return "Email tidak boleh kosong";
                          }
                          return null;
                        }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SizedBox(
                    height: 30,
                    child: TextFormField(
                        controller: controller.PasswordController,
                        decoration: InputDecoration(
                          hintText: "Masukkan Password",
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(20.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 2, color: Colors.green),
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        validator: (value) {
                          if (value!.length < 3) {
                            return "Password tidak boleh kosong";
                          }
                          return null;
                        }),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Obx(() => controller.loading.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50), // NEW
                          ),
                          onPressed: () {
                            controller.login();
                          },
                          child: Text("Login"))),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.REGISTER),
                    child: const Text("Daftar"))
              ],
            ),
          ),
        ).paddingSymmetric(horizontal: 16)),
      ),
    );
  }
}
