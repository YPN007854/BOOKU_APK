import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Peminjaman Buku ${Get.parameters['judul_buku'].toString()}'),
          centerTitle: true,
        ),
        body: Center(
            child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                  controller: controller.tanggalPinjamController,
                  decoration:
                      InputDecoration(hintText: "Masukkan tanggal pinjam"),
                  validator: (value) {
                    if (value!.length < 4) {
                      return "tanggal pinjam tidak boleh kosong";
                    }
                    return null;
                  }),
              TextFormField(
                  controller: controller.tanggalKembaliController,
                  decoration:
                      InputDecoration(hintText: "Masukkan tanggal kembali"),
                  validator: (value) {
                    if (value!.length < 4) {
                      return "tanggal kembali tidak boleh kosong";
                    }
                    return null;
                  }),
              Obx(() => controller.loading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        controller.post();
                      },
                      child: Text("pinjam")))
            ],
          ),
        )));
  }
}
