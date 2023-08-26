import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:systemgym/constants/storage_keys.dart';

import '../constants/api_links.dart';

class ApiServices {
  GetStorage _box = GetStorage();
  Future<List<dynamic>> getRequestList({required url}) async {
    var jwt_token = _box.read(StorageKey.TOKEN);
    try {
      var response = await http.get(Uri.parse(ApiEndPoints.baseUrl + url),
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $jwt_token'
          });

      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);

        return responsebody;
      }

      if (response.statusCode == 401) {
        // AuthRequest(url: ApiEndPoints.authEndpoints.login_admin);
        // count++;
        // getRequestList(url: url);
        var responsebody = jsonDecode(response.body);

        return responsebody;
      } else {
        return [
          {'error': response.statusCode}
        ];
      }
    } catch (e) {
      return [
        {"error": e}
      ];
    }
  }

  Future<Map<dynamic, dynamic>> getRequestMap({required url}) async {
    var jwt_token = _box.read(StorageKey.TOKEN);

    try {
      var response = await http.get(
          Uri.parse(ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.coach),
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $jwt_token'
          });

      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);

        return responsebody;
      }

      if (response.statusCode == 401) {
        // AuthRequest(url: ApiEndPoints.authEndpoints.login_admin);
        // getRequestMap(url: url);
        var responsebody = jsonDecode(response.body);

        return responsebody;
      } else {
        return {'error': response.statusCode};
      }
    } catch (e) {
      print(e);
      return {"error": e};
    }
  }

  Future<Map<dynamic, dynamic>> postRequestMap(
      {required url, required Map<dynamic, dynamic> body}) async {
    var jwt_token = _box.read(StorageKey.TOKEN);

    try {
      var response = await http.post(Uri.parse(ApiEndPoints.baseUrl + url),
          body: json.encode(body),
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $jwt_token'
          });

      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);

        return responsebody;
      }

      if (response.statusCode == 401) {
        // AuthRequest(url: ApiEndPoints.authEndpoints.login_admin);

        // postRequestMap(url: url, body: body);
        var responsebody = jsonDecode(response.body);

        return responsebody;
      } else {
        return {'error': response.statusCode};
      }
    } catch (e) {
      return {"error": e};
    }
  }

  Future<Map<dynamic, dynamic>> postRequestList(
      {required url, required Map<dynamic, dynamic> body}) async {
    var jwt_token = _box.read(StorageKey.TOKEN);

    try {
      var response =
          await http.post(Uri.parse(url), body: json.encode(body), headers: {
        'Accept': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $jwt_token'
      });
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      }

      if (response.statusCode == 401) {
        // AuthRequest(url: ApiEndPoints.authEndpoints.login_admin);

        // postRequestList(url: url, body: body);
        var responsebody = jsonDecode(response.body);

        return responsebody;
      } else {
        return {"error": response.statusCode};
      }
    } catch (e) {
      return {"error": e};
    }
  }

  Future<Map<dynamic, dynamic>> AuthRequest({required String url}) async {
    // String? email = null;
    // String? pass = null;
    // var body = email == null
    //     ?
    var body = {'email': 'admin@admin.com', 'password': '12345678'};
    //   : {'email': email, 'password': pass};

    try {
      var response = await http.post(Uri.parse(ApiEndPoints.baseUrl + url),
          body: json.encode(body),
          headers: {
            'Content-Type': 'application/json',
          });
      print(response.body);

      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        _box.write(StorageKey.TOKEN, responsebody['access_token']);
        return responsebody;
      } else {
        return {"error": response.statusCode};
      }
    } catch (e) {
      return {"error": e};
    }
  }

  Future<Map<String, dynamic>> apiPut({
    url,
    body,
  }) async {
    try {
      var response = await http.put(Uri.parse('$url'),
          headers: <String, String>{
            'Accept': 'application/json; charset=UTF-8',
          },
          body: json.encode(body));

      if (response.statusCode == 401) {}
      if (response.statusCode == 403) {}
      if (response.statusCode == 200) {
        return {'response': response.statusCode};
      }

      return {'error': response.body};
    } catch (e) {
      return {'error': e};
    }
  }

  Future<Map<String, dynamic>> apiDelete(url) async {
    try {
      var response =
          await http.delete(Uri.parse('$url'), headers: <String, String>{
        'Accept': 'application/json; charset=UTF-8',
      });

      if (response.statusCode == 401) {}
      if (response.statusCode == 403) {}
      if (response.statusCode == 200) {
        return {'response': response.statusCode};
      }

      return {'error': response.statusCode};
    } catch (e) {
      return {'error': e};
    }
  }
}
