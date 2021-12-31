import 'package:get/get.dart';
import 'package:skillana_flutter/models/assesment/entrepreneur/result.dart';
import 'package:skillana_flutter/services/service_provider.dart';

class ResultEntrepreneurController extends GetxController {
  late ModelResultBi data;
  final resultData = [].obs;
  final _isLoading = true.obs;

  void createArray() {}

  @override
  void onInit() async {
    onGetData();
    super.onInit();
  }

  onGetData() async {
    try {
      var response = await ServiceProvider.getData(
          'api/v1/assessment/test/business-insight/result',
          token: 'priqq4p619utea42a2ek254dreebfj1u');

      if (response != null) {
        data = ModelResultBi.fromJson(response);
        // print(data.data.autonomy);
        resultData.add({
          'id': 1,
          'title': 'Autonomy',
          'img': 'autonomy',
          'rating': (data.data.star.autonomy).toDouble(),
          'desc': data.data.autonomy,
        });
        resultData.add({
          'id': 2,
          'title': 'Innovativeness',
          'img': 'innovativeness',
          'rating': (data.data.star.innovativeness).toDouble(),
          'desc': data.data.innovativeness,
        });
        resultData.add({
          'id': 3,
          'title': 'Risk Taking',
          'img': 'risk_taking',
          'rating': (data.data.star.riskTaking).toDouble(),
          'desc': data.data.riskTaking,
        });
        resultData.add({
          'id': 4,
          'title': 'ProActiveness',
          'img': 'proactiveness',
          'rating': (data.data.star.proactiveness).toDouble(),
          'desc': data.data.proactiveness,
        });
        resultData.add({
          'id': 5,
          'title': 'Competitive Aggresiveness',
          'img': 'competitive',
          'rating': (data.data.star.competitiveAgresiveness).toDouble(),
          'desc': data.data.competitiveAgresiveness,
        });
        resultData.add({
          'id': 6,
          'title': 'Kesimpulan dan Saran',
          'img': 'summary',
          'rating': 0.0,
          'desc': [
            data.data.conclusion.high,
            data.data.conclusion.low,
            data.data.suggestion.high,
            data.data.suggestion.low
          ],
        });
      }
    } catch (e) {
      print(e);
    } finally {
      resultData.refresh();
      update();
      _isLoading.value = false;
      print(resultData);
    }
  }

  get isLoading => _isLoading.value;
}
