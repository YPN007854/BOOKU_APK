import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ukkspesial/app/data/constant/endpoint.dart';
import 'package:ukkspesial/app/data/model/response_buku_view.dart';
import 'package:ukkspesial/app/data/provider/api_provider.dart';

class DetailBukuController extends GetxController with StateMixin<List<DataBukuView>> {

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> getData() async {
    change(null, status: RxStatus.loading());
    var idBuku = Get.parameters['id'];
    try {
      final response = await ApiProvider.instance().get("${Endpoint.buku}/$idBuku");
      if (response.statusCode == 200) {
        final ResponseBukuView responseBook = ResponseBukuView.fromJson(response.data);
        if(responseBook.data == null){
          change(null, status:  RxStatus.empty());
        } else {
          change(responseBook.data as List<DataBukuView>?, status: RxStatus.success());
        }
      } else {
        change(null, status: RxStatus.error("Gagal mengambil data"));
      }

    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response?.data != null) {
          change(null, status: RxStatus.error("${e.response?.data['message']}"));
        }
      } else {
        change(null, status: RxStatus.error(e.message ?? ""));
      }

    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
