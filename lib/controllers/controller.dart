// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:live_test/models/model.dart';
import 'package:live_test/service/json_service.dart';

class Controller extends GetxController {
  RxList<Model> allData = <Model>[].obs;
  @override
  void onInit() {
    super.onInit();

    fatchData();
  }

  Future<void> fatchData() async {
    List<dynamic> data = await JsonService.lodeJson();

    await Future.delayed(
      Duration(seconds: 1),
      () => allData.value = data.map((p) => Model.fromJson(p)).toList(),
    );
  }
}
