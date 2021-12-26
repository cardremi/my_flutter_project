import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService extends GetxService {
  static late SharedPreferences _preferences;

  static final _keyUserId = 'userId';
  static final _keyToken = 'token';
  static final _keyFCMToken = 'fcmToken';
  static final _keyFullname = 'fullname';
  static final _keyAvatar = 'avatar';
  static final _keyPhone = 'phone';

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
    return _preferences;
  }

  static Future clear() async {
    _preferences.clear();
  }

  static Future setUserId(int userId) async {
    await _preferences.setInt(_keyUserId, userId);
  }

  static int? getUserId() {
    final data = _preferences.getInt(_keyUserId);

    if (data != null) return data;
    return null;
  }

  static Future setToken(String token) async {
    await _preferences.setString(_keyToken, token);
  }

  static String? getToken() {
    final data = _preferences.getString(_keyToken);

    if (data != null) return data;
    return null;
  }

  static Future setFCMToken(String token) async {
    await _preferences.setString(_keyFCMToken, token);
  }

  static String? getFCMToken() {
    final data = _preferences.getString(_keyFCMToken);

    if (data != null) return data;
    return null;
  }

  static Future setFullname(String fullname) async {
    await _preferences.setString(_keyFullname, fullname);
  }

  static String? getFullname() {
    final data = _preferences.getString(_keyFullname);

    if (data != null) return data;
    return null;
  }

  static Future setAvatar(String url) async {
    await _preferences.setString(_keyAvatar, url);
  }

  static String? getAvatar() {
    final data = _preferences.getString(_keyAvatar);

    if (data != null) return data;
    return null;
  }

  static Future setPhone(String phone) async {
    await _preferences.setString(_keyPhone, phone);
  }

  static String? getPhone() {
    final data = _preferences.getString(_keyPhone);

    if (data != null) return data;
    return null;
  }
}
