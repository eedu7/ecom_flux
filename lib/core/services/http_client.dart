import 'dart:convert';

import 'package:ecom_flux/core/services/api_endpoints.dart';
import 'package:ecom_flux/core/services/shared_prefs_keys.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HTTPClientService {
  final http.Client _client = http.Client();

  Future<dynamic> get(String endpoint) async {
    Uri url = _buildUri(endpoint);
    final headers = await _getHeaders();

    final response = await _client.get(url, headers: headers);

    return _handleResponse(response);
  }

  Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
    Uri url = _buildUri(endpoint);
    final headers = await _getHeaders();

    final response = await _client.post(
      url,
      headers: headers,
      body: jsonEncode(body),
    );
    return _handleResponse(response);
  }

  Future<dynamic> put(String endpoint, Map<String, dynamic> body) async {
    Uri url = _buildUri(endpoint);
    final headers = await _getHeaders();

    final response = await _client.put(
      url,
      headers: headers,
      body: jsonEncode(body),
    );
    return _handleResponse(response);
  }

  Future<dynamic> delete(String endpoint) async {
    Uri url = _buildUri(endpoint);
    final headers = await _getHeaders();

    final response = await _client.delete(url, headers: headers);
    return _handleResponse(response);
  }

  Uri _buildUri(String endpoint) {
    if (ApiEndpoints.isProduction) {
      return Uri.https(ApiEndpoints.baseUrl, endpoint);
    } else {
      return Uri.http(ApiEndpoints.baseUrl, endpoint);
    }
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'HTTP Error ${response.statusCode}: ${response.reasonPhrase}',
      );
    }
  }

  Future<Map<String, String>> _getHeaders() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString(SharedPrefsKeys.accessToken);

    final headers = <String, String>{'Content-Type': 'application/json'};

    if (accessToken != null && accessToken.isNotEmpty) {
      headers['Authorization'] = 'Bearer $accessToken';
    }

    return headers;
  }

  void close() {
    _client.close();
  }
}
