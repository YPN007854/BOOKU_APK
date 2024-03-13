import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ukkspesial/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "asset/image/ep--menu.svg",
                      width: 24,
                    ),
                    Row(
                      children: [
                        Icon(Iconsax.search_favorite_1),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Iconsax.notification),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child:
                        Text("Popular Books", style: TextStyle(fontSize: 20)),
                  )
                ],
              ),
              Container(
                height: 180,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: PageView.builder(
                  itemBuilder: (_, i) {
                    return Container(
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("asset/image/Trending.png"),
                          )),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text("Disarankan untuk Anda",
                        style: TextStyle(fontSize: 20)),
                  )
                ],
              ),
              Container(
                height: 240,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: controller.obx((state) => ListView.builder(
                        itemCount: state?.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red),
                                  ),
                                  Text(
                                    state![index].judulBuku ?? '',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          );
                        }))),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text("Koleksi",
                        style: TextStyle(fontSize: 20)),
                  )
                ],
              ),
              Container(
                height: 240,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: controller.obx((state) => ListView.builder(
                        itemCount: state?.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(Routes.DETAIL_BUKU,
                              parameters: {
                                'id': state[index].bukuid.toString()
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red),
                                  ),
                                  Text(
                                    state![index].judulBuku ?? '',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          );
                        }))),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
