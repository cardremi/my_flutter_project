import 'package:get/get.dart';
import 'package:skillana_flutter/routes/routes.dart';
import 'package:skillana_flutter/services/service_provider.dart';

class MSDTController extends GetxController {
  final _questionData = [].obs;
  final temp = [];
  final _answerData = {}.obs;

  int counter = 0;

  void incrementPage() {
    if (counter != (temp.length - 1)) {
      counter++;
      _questionData.assignAll(temp[counter]);
      _questionData.refresh();
      update();
    } else {
      Get.toNamed(AppPages.RESULT_MSDT);
    }
  }

  void decrementPage() {
    if (counter != 0) {
      counter--;
      _questionData.assignAll(temp[counter]);
      _questionData.refresh();
      update();
    }
  }

  void answerData(String key, String value) {
    _answerData[key] = value;
    _answerData.refresh();
    update();
  }

  @override
  void onInit() async {
    onGetData();
    super.onInit();
  }

  List chunk(List list, int chunkSize) {
    List chunks = [];
    int len = list.length;
    for (var i = 0; i < len; i += chunkSize) {
      int size = i + chunkSize;
      chunks.add(list.sublist(i, size > len ? len : size));
    }
    return chunks;
  }

  onGetData() async {
    var response = await ServiceProvider.getData('api/v1/assessment/test/msdt',
        token: 's07bdlafaju0jvv2h7dp36lu4kbsmf8n');

    if (response['data'] != null) {
      temp.assignAll(chunk(response['data'], 4));
      _questionData.assignAll(temp[0]);
    }
    update();
  }

  get questionData => _questionData;
  get answersData => _answerData;
}
