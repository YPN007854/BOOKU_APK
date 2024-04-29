import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/koleksi_controller.dart';

class KoleksiView extends GetView<KoleksiController> {
  KoleksiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Koleksi",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white, // Warna teks putih
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.offAllNamed(Routes.HOME);
          },
        ),
      ),
      body: Obx(() {
        if (controller.loading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: controller.books!.length,
            itemBuilder: (context, index) {
              final book = controller.books![index];
              return Card( // Menambahkan Card untuk memberikan efek elevasi
                elevation: 5.0, // Mengatur tingkat elevasi
                child: ListTile(
                  //leading: Image.network('${Endpoint.Url}${book.book!.image}', fit: BoxFit.fill),//
                  title: Text(
                    book.bukus!.judulBuku ?? '',
                    style: TextStyle( // Menambahkan TextStyle
                      fontSize: 18.0, // Mengubah ukuran font
                      fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      controller.deleteData(book.bukuid!.toInt());
                    },
                  ),
                  onTap: () {
                    Get.toNamed(Routes.DETAIL_BUKU,
                        parameters: {
                          'id': book.bukuid.toString()
                        });
                  },
                ),
              );
            },
          );

        }
      }),
    );
  }
}
