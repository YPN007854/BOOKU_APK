import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ukkspesial/app/routes/app_pages.dart';


void main() {
  GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    )
  );
}

class StorageProvider {
  static write(key, String value) async {
    await GetStorage().write(key, value);
  }


  static String read(key) {
    try {
      return GetStorage().read(key);
    } catch (e) {
      return "";
    }
  }


  static void clearAll() {
    GetStorage().erase();
  }
}


class StorageKey {
  static const String status = "status";
  static const String iduser = "iduser";
}
