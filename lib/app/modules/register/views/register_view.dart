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
                      child: Text("Register", style: TextStyle(fontSize: 30)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          height: 30,
                          child: TextFormField(
                              controller: controller.NamaLengkapController,
                              decoration: InputDecoration(
                                hintText: "Masukkan Nama Lengkap",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(20.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2, color: Colors.green),
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                              validator: (value) {
                                if (value!.length < 3) {
                                  return "Nama Lengkap tidak boleh kosong";
                                }
                                return null;
                              }),
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          height: 30,
                          child: TextFormField(
                              controller: controller.UsernameController,
                              decoration: InputDecoration(
                                hintText: "Masukkan Username",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(20.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2, color: Colors.green),
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                              validator: (value) {
                                if (value!.length < 3) {
                                  return "Username tidak boleh kosong";
                                }
                                return null;
                              }),
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          height: 30,
                          child: TextFormField(
                              controller: controller.AlamatController,
                              decoration: InputDecoration(
                                hintText: "Masukkan Alamat",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(20.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2, color: Colors.green),
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                              validator: (value) {
                                if (value!.length < 3) {
                                  return "Alamat tidak boleh kosong";
                                }
                                return null;
                              }),
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          height: 30,
                          child: TextFormField(
                              controller: controller.PasswordController,
                              decoration: InputDecoration(
                                hintText: "Masukkan Password",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(20.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2, color: Colors.green),
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                              validator: (value) {
                                if (value!.length < 3) {
                                  return "Password tidak boleh kosong";
                                }
                                return null;
                              }),
                        )
                    ),
                    SizedBox(
                      height: 20,
                    ),

               Obx(() => controller.loading.value?
                     CircularProgressIndicator():
                       ElevatedButton(onPressed: (){
                         controller.register();
                       }, child: Text("register")))
                  ]
                ),
              ),
            ),
          ),
          // child: Form(
          //   key: controller.formKey,
          //   child: Column(
          //     children: [
          //       TextFormField(
          //           controller: controller.NamaLengkapController,
          //           decoration: InputDecoration(hintText: "Masukkan Nama Lengkap"),
          //           validator: (value){
          //             if (value!.length <5) {
          //               return "nama tidak boleh kosong";
          //             }
          //             return null;
          //           }
          //
          //       ),
          //       TextFormField(
          //           controller: controller.UsernameController,
          //           decoration: InputDecoration(hintText: "Masukkan Username"),
          //           validator: (value){
          //             if (value!.length <5) {
          //               return "Username tidak boleh kosong";
          //             }
          //             return null;
          //           }
          //       ),
          //       TextFormField(
          //           controller: controller.EmailController,
          //           decoration: InputDecoration(hintText: "Masukkan Email"),
          //           validator: (value){
          //             if (value!.length <4) {
          //               return "no Email tidak boleh kosong";
          //             }
          //             return null;
          //           }
          //       ),
          //       TextFormField(
          //           controller: controller.AlamatController,
          //           decoration: InputDecoration(hintText: "Masukkan Alamat"),
          //           validator: (value){
          //             if (value!.length <4) {
          //               return "Alamat tidak boleh kosong";
          //             }
          //             return null;
          //           }
          //       ),
          //       TextFormField(
          //           controller: controller.PasswordController,
          //           decoration: InputDecoration(hintText: "Masukkan Password"),
          //           validator: (value){
          //             if (value!.length <4) {
          //               return "Password tidak boleh kosong";
          //             }
          //             return null;
          //           }
          //       ),
          //       Obx(() => controller.loading.value?
          //       CircularProgressIndicator():
          //       ElevatedButton(onPressed: (){
          //         controller.register();
          //       }, child: Text("register")))
          //     ],
          //   ),
          // )
      )
    );
  }
}
