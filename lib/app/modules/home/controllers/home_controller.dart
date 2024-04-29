import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ukkspesial/app/data/constant/endpoint.dart';
import 'package:ukkspesial/app/data/model/response_buku.dart';
import 'package:ukkspesial/app/data/provider/api_provider.dart';

class HomeController extends GetxController with StateMixin<List<DataBuku>> {
  var index = 1.obs;

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

  void onTap(int index){
    print("Tapped index: $index");
    print("Current index: ${this.index.value}");
    this.index.value = index;
    print("New index: ${this.index.value}");
  }

  Future<void> getData() async {
    change(null, status: RxStatus.loading());
    try {
      final response = await ApiProvider.instance().get(Endpoint.buku,);
      if (response.statusCode == 200) {
        final ResponseBuku responseBook = ResponseBuku.fromJson(response.data);
        if(responseBook.data!.isEmpty){
          change(null, status:  RxStatus.empty());
        } else {
          change(responseBook.data, status: RxStatus.success());
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
