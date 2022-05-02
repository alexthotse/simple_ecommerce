


class LoginResponseModel{
  final String userEmail;
  final String message;

  LoginResponseModel({
    required this.userEmail,
    required this.message,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json){
    return LoginResponseModel(
      userEmail: json['userEmail'],
      message: json['message'],
    );
  }

}