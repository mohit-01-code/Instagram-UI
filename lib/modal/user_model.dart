class UserModel {
  String? _img;
  String? _username;
  bool? _isLive;

  UserModel(String s, String img, bool isLive) {
    _img = img;
    _username = s;
    _isLive = isLive;
  }

  String get username => _username!;
  String get img => _img!;
  bool get isLive => _isLive!;

  set username(String value) {
    _username = value;
  }

  set isLive(bool value) {
    _isLive = value;
  }

  set img(String value) {
    _img = value;
  }
}
