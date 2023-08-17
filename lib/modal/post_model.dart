class PostModel {
  String? _username;
  List<String>? _img;
  String? _profile;
  String? _location;
  String? _likes;
  String? _caption;

  PostModel(
    String? username,
    List<String>? img,
    String? location,
    String? likes,
    String? caption,
    String? profile,
  ) {
    _username = username;
    _img = img;
    _location = location;
    _likes = likes;
    _caption = caption;
    _profile = profile;
  }

  String get caption => _caption!;
  String get profile => _profile!;

  set caption(String value) {
    _caption = value;
  }

  set profile(String value) {
    _profile = value;
  }

  String get likes => _likes!;

  set likes(String value) {
    _likes = value;
  }

  String get location => _location!;

  set location(String value) {
    _location = value;
  }

  List<String> get img => _img!;

  set img(List<String> value) {
    _img = value;
  }

  String get username => _username!;

  set username(String value) {
    _username = value;
  }
}
