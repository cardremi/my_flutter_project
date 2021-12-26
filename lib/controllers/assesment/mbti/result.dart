import 'package:get/get.dart';
import 'package:skillana_flutter/services/service_provider.dart';

class ResultMBTIController extends GetxController {
  final _resultData = {}.obs;

  @override
  void onInit() async {
    onGetData();
    super.onInit();
  }

  onGetData() async {
    var response = await ServiceProvider.getData(
        'api/v1/tes/mbti_result?lang=id',
        token: 's07bdlafaju0jvv2h7dp36lu4kbsmf8n');

    if (response != null) {
      _resultData.addAll(response['data']);
      update();
    }
  }

  get resultData => _resultData;
}
