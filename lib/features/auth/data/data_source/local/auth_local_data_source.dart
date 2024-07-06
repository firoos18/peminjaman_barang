import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  final SharedPreferences _sharedPreferences;

  const AuthLocalDataSource(this._sharedPreferences);

  Future<dynamic> setUserData({
    String? userToken,
    String? email,
    String? uid,
  }) async {
    if (userToken != null && email != null && uid != null) {
      await _sharedPreferences.setString("token", userToken);
      await _sharedPreferences.setString("email", email);
      await _sharedPreferences.setString("uid", uid);
    }
  }

  String? getUserToken() {
    final String? userToken = _sharedPreferences.getString("token");
    return userToken;
  }

  String? getUid() {
    final String? uid = _sharedPreferences.getString('uid');
    return uid;
  }

  Future<bool?> userLogout() async {
    return await _sharedPreferences.remove('token');
  }
}
