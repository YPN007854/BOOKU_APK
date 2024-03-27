import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ukkspesial/app/routes/app_pages.dart';
import 'package:ukkspesial/app/widget/base64/base64widget.dart';

import '../controllers/detail_buku_controller.dart';

class DetailBukuView extends GetView<DetailBukuController> {
  const DetailBukuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
            child: Scaffold(
                body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: controller.obx(
              (state) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Container(
                              width: 130,
                              height: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  image: DecorationImage(
                                      image: base64widget(state?.cover??'-')),
                            ),
                            )],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(state?.judulBuku ?? ''),
                          SizedBox(
                            height: 10,
                          ),
                          Text(state?.penulis ?? "-"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(state?.penerbit ?? '-'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text("21")
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red),
                      ),
                    ],
                  ),
                  ListTile(
                      title: Text("${state?.judulBuku}"),
                      subtitle: Text("Penulis ${state?.penulis}"),
                      trailing: Text(state?.status ?? '-')),

                  SizedBox(
                    height: 30,
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50), // NEW
                        ),
                        onPressed: () {
                          if(state?.status != null){
                            if(state?.status == 'dipinjam'){
                              Get.toNamed(Routes.BUKTI_PEMINJAMAN, parameters: {
                                'tanggal_peminjaman' : state?.peminjamans?[0].tanggalPengembalian ?? ''
                              });
                            }
                            else if(state?.status == 'tersedia'){
                              Get.toNamed(Routes.PEMINJAMAN, parameters: {
                                'judul_buku': state?.judulBuku ?? '',
                                'id' : state?.bukuid.toString() ??''
                              });
                            }
                          }
                        },
                        child: state?.status != null && state?.status == 'dipinjam' ? Text('Bukti Peminjaman'):state?.status != null && state?.status == 'tersedia' ? Text('Peminjaman'):Text('-'))),
                ],
              ),
            ),
          ),
        ))));
  }
}
