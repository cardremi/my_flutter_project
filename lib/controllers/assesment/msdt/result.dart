import 'package:get/get.dart';
import 'package:skillana_flutter/services/service_provider.dart';

class ResultMSDTController extends GetxController {
  final _resultData = {}.obs;
  final _isLoading = true.obs;

  @override
  void onInit() async {
    onGetData();
    super.onInit();
  }

  onGetData() async {
    try {
      var response = await ServiceProvider.getData(
          'api/v1/assessment/test/msdt/result',
          token: 'j944v95r3g5i3bi5rcit44r6g68pa64h');

      if (response['data'] != null) {
        _resultData.addAll(response['data']);
        update();
      }
    } catch (e) {
      print(e);
    } finally {
      _isLoading.value = false;
    }
  }

  get resultData => _resultData;
  get isLoading => _isLoading.value;
}
