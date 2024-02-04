class LoginModel {
  final String message;
  final String token;

  LoginModel({required this.message, required this.token});

  /*factory LoginModel.fromJson(Map<String, dynamic> jsonData) {
    return LoginModel(message: message, token: token)
  }*/
}