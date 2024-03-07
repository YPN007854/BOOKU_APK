import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("asset/image/ep--menu.svg", width:24 ,),
                        Row(
                          children: [
                            Icon(Iconsax.search_favorite_1),
                            SizedBox(width: 10,),
                            Icon(Iconsax.notification),
                          ],
                        )
                      ],
                    ) ,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text("Popular Books", style: TextStyle(fontSize: 20)),
                      )
                    ],
                  ),
                  Container(
                    height: 180,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: PageView.builder(
                      itemBuilder: (_, i){
                        return Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                 image: AssetImage("asset/image/Trending.png"),
                            )
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text("Disarankan untuk Anda", style: TextStyle(fontSize: 20)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      // buildCard(),
                      SizedBox(width: 12,)
                    ],
                  )
                  // Container(
                  //   height: 170,
                  //   child: Stack(
                  //     children: [
                  //
                  //       Positioned(
                  //         top:0,
                  //         left:0,
                  //         right:0,
                  //         height: 170,
                  //         child: Container(
                  //           height: 170,
                  //           child: PageView.builder(
                  //               controller: PageController(viewportFraction: 0.4),
                  //               itemCount: 5,
                  //               itemBuilder: (_, i){
                  //                 return Container(
                  //                   height: 170,
                  //                   width: MediaQuery.of(context).size.width,
                  //                   decoration: BoxDecoration(
                  //                       borderRadius: BorderRadius.circular(15),
                  //                       image: DecorationImage(
                  //                           image: AssetImage("asset/image/dilan.jpg"),
                  //
                  //                       )
                  //                   ),
                  //                 );
                  //               }
                  //           ),
                  //         ) ,
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            )
      ),
    );
  }
}
