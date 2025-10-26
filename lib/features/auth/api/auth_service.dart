import 'package:ecom_flux/core/services/api_endpoints.dart';
import 'package:ecom_flux/core/services/http_client.dart';
import 'package:ecom_flux/core/services/shared_prefs_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final HTTPClientService _http = HTTPClientService();

  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _http.post(ApiEndpoints.loginUrl, {
        'email': email,
        'password': password,
      });

      if (response['token'] != null) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(
          SharedPrefsKeys.accessToken,
          response['token']['access_token'],
        );
        await prefs.setString(
          SharedPrefsKeys.refreshToken,
          response['token']['refresh_token'],
        );
      }

      return {'success': true, 'message': 'Login successful', 'data': response};
    } catch (e) {
      return {'success': false, 'message': 'Login failed', 'errorMessage': e};
    }
  }

  Future<Map<String, dynamic>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String gender,
    required String password,
  }) async {
    try {
      final response = await _http.post(ApiEndpoints.signupUrl, {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'phone': phone,
        'gender': gender,
        'password': password,
      });
      return {
        'success': true,
        'message': 'Signup successful',
        'data': response,
      };
    } catch (e) {
      return {'success': false, 'message': 'Signup failed', 'errorMessage': e};
    }
  }

  Future<Map<String, dynamic>> forgotPassword({required String email}) async {
    try {
      final response = await _http.post(ApiEndpoints.signupUrl, {
        'email': email,
      });

      return {
        'success': true,
        'message': 'Reset link sent successfully',
        'data': response,
      };
    } catch (e) {
      return {
        'success': false,
        'message': 'Failed to send reset link',
        'errorMessage': e,
      };
    }
  }
}
