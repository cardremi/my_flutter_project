import 'package:get/get.dart';
import 'package:skillana_flutter/routes/routes.dart';
import 'package:skillana_flutter/services/service_provider.dart';

class EntrepreneurController extends GetxController {
  final _questionData = [].obs;
  final temp = [];
  final _answerData = {}.obs;
  final _isLoading = true.obs;

  final options = [1, 2, 3, 4, 5, 6, 7].obs;

  final optionsReverse = [7, 6, 5, 4, 3, 2, 1].obs;

  int counter = 0;

  void incrementPage() {
    if (counter != (temp.length - 1)) {
      counter++;
      _questionData.assignAll(temp[counter]);
      _questionData.refresh();
      update();
    } else {
      Get.toNamed(AppPages.RESULT_ENTREPRENEUR);
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

  void answerData(String key, int value) {
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
    try {
      var response = await ServiceProvider.getData(
          'api/v1/assessment/test/business-insight',
          token: 'tfckuje1pe5ao0ngjtmcv2p4pd92ebpn');

      if (response['data'] != null) {
        temp.assignAll(chunk(response['data'], 4));
        _questionData.assignAll(temp[0]);
      }
      print(response['data'][0]['question']);
      update();
    } catch (e) {
      print(e);
    } finally {
      _isLoading.value = false;
    }
  }

  get questionData => _questionData;
  get answersData => _answerData;
  get isLoading => _isLoading.value;
}
