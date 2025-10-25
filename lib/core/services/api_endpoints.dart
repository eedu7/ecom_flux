import 'package:ecom_flux/core/env.dart';

class ApiEndpoints {
  static const bool isProduction = ENV.ENVIRONMENT == 'development'
      ? false
      : true;
  static const String baseUrl = ENV.BASE_API_URL;

  static const String loginUrl = '/auth/login';
  static const String signupUrl = '/auth/signup';
  static const String forgotPasswordUrl = '/auth/forgot-password';
}
