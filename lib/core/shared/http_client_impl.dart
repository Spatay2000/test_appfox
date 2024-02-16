import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:test_appfox/core/constants/server_variables.dart';

import '../utils/exceptions.dart';
import '../utils/navigation_service.dart';
import 'http.dart';

@Injectable(as: Http)
class HttpImpl implements Http {
  final baseUrl = ServerVariables.baseUrl;
  final NavigationService navigationService;

  HttpImpl({required this.navigationService});

  @override
  Future<dynamic> get(String url, {anotherToken, String query = ''}) async {
    debugPrint('GET $baseUrl$url');

    // String token = '58PD6Y2-3G24PCC-GE0F30Q-NC29MFA';
    String token = '908RYAT-WFJMB7N-KN16YKR-Z876SBS';

    dynamic responseJson;

    try {
      final response = await http
          .get(
        Uri.parse(baseUrl + url),
        headers: getHeader(
          token,
        ),
      )
          .timeout(const Duration(seconds: 16), onTimeout: () {
        throw throw FetchDataException('Connection Timeout', 0);
      });
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', 0);
    }

    return responseJson;
  }

  Map<String, String> getHeader(String token) {
    return {
      'content-type': 'application/json',
      'accept': 'application/json',
      'X-API-KEY': token,
    };
  }

  Map<String, String> getFormHeader(String? token) {
    if (token == null) {
      return {
        'content-type': 'multipart/form-data',
        'accept': 'application/json',
      };
    }
    return {
      'content-type': 'multipart/form-data',
      'accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  dynamic _response(http.Response response) {
    debugPrint("${response.statusCode}");
    debugPrint(response.body.toString());

    dynamic responseJson;

    if (response.body != '') {
      responseJson = json.decode(response.body.toString());
    }
    switch (response.statusCode) {
      case 200:
        return responseJson;
      case 201:
        return responseJson;
      case 204:
        return responseJson;
      case 400:
        throw BadRequestException(
            _getErrorMessage(responseJson), response.statusCode);
      case 401:
        if (!_getErrorMessage(responseJson).contains('код')) {
          // navigationService.replace();
          //Routes login
        }
        throw UnauthorizedException(
            _getErrorMessage(responseJson), response.statusCode);
      case 403:
        throw UnauthorizedException(
            _getErrorMessage(responseJson), response.statusCode);
      case 404:
        throw NotFoundException(
            _getErrorMessage(responseJson), response.statusCode);
      case 422:
        throw SystemException(
            _getErrorMessage(responseJson), response.statusCode);
      case 500:
        throw ServerException(
            _getErrorMessage(responseJson), response.statusCode);
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}: ${response.body}',
            0);
    }
  }

  String _getErrorMessage(dynamic message) {
    if (message is List) {
      String msg = '';
      for (var element in message) {
        msg += "${element['error']} ";
      }
      return msg;
    }

    return message['error'];
  }
}
