class UserSingIn {
  String email = "";
  String password = "";

  UserSingIn({String? addressEmail, String? pass}) {
    email = addressEmail.toString().trim();
    password = pass.toString().trim();
  }
}
