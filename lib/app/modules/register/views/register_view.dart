import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                    controller: controller.NamaLengkapController,
                    decoration: InputDecoration(hintText: "Masukkan Nama Lengkap"),
                    validator: (value){
                      if (value!.length <5) {
                        return "nama tidak boleh kosong";
                      }
                      return null;
                    }

                ),
                TextFormField(
                    controller: controller.UsernameController,
                    decoration: InputDecoration(hintText: "Masukkan Username"),
                    validator: (value){
                      if (value!.length <5) {
                        return "Username tidak boleh kosong";
                      }
                      return null;
                    }
                ),
                TextFormField(
                    controller: controller.EmailController,
                    decoration: InputDecoration(hintText: "Masukkan Email"),
                    validator: (value){
                      if (value!.length <4) {
                        return "no Email tidak boleh kosong";
                      }
                      return null;
                    }
                ),
                TextFormField(
                    controller: controller.AlamatController,
                    decoration: InputDecoration(hintText: "Masukkan Alamat"),
                    validator: (value){
                      if (value!.length <4) {
                        return "Alamat tidak boleh kosong";
                      }
                      return null;
                    }
                ),
                TextFormField(
                    controller: controller.PasswordController,
                    decoration: InputDecoration(hintText: "Masukkan Password"),
                    validator: (value){
                      if (value!.length <4) {
                        return "Password tidak boleh kosong";
                      }
                      return null;
                    }
                ),
                Obx(() => controller.loading.value?
                CircularProgressIndicator():
                ElevatedButton(onPressed: (){
                  controller.register();
                }, child: Text("register")))
              ],
            ),
          )
      )
    );
  }
}
