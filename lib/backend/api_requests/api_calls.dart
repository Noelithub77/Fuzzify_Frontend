import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class QuerryCall {
  static Future<ApiCallResponse> call({
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'querry',
      apiUrl: 'https://liked-positively-labrador.ngrok-free.app/find',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': '69',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VsearchCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? rec,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Vsearch',
      apiUrl: 'https://liked-positively-labrador.ngrok-free.app/voice',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': '69',
      },
      params: {
        'rec': rec,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    int? age,
    String? address = '',
    String? dob = '',
    String? doc = '',
    String? crime = '',
    String? gender = '',
    String? aadhaar = '',
    String? station = '',
    String? type = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "metadata": {
    "age": $age,
    "address": "${escapeStringForJson(address)}",
    "doc": "${escapeStringForJson(doc)}",
    "dob": "${escapeStringForJson(dob)}",
    "crime": "${escapeStringForJson(crime)}",
    "gender": "${escapeStringForJson(gender)}",
    "aadhaar": "${escapeStringForJson(aadhaar)}",
    "station": "${escapeStringForJson(station)}",
    "type": "${escapeStringForJson(type)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add',
      apiUrl: 'https://liked-positively-labrador.ngrok-free.app/add',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': '69',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? name = '',
    String? address = '',
    String? dob = '',
    String? doc = '',
    String? aadhar = '',
    String? station = '',
    String? crime = '',
    int? age,
    String? gender = '',
  }) async {
    final ffApiRequestBody = '''
{
"id":"${escapeStringForJson(id)}",
  "updated_name": "${escapeStringForJson(name)}",
  "updated_metadata": {
    "age": $age,
    "address": "${escapeStringForJson(address)}",
    "doc": "${escapeStringForJson(doc)}",
    "dob": "${escapeStringForJson(dob)}",
    "crime": "${escapeStringForJson(crime)}",
    "gender": "${escapeStringForJson(gender)}",
    "aadhaar": "${escapeStringForJson(aadhar)}",
    "station": "${escapeStringForJson(station)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit',
      apiUrl: 'https://liked-positively-labrador.ngrok-free.app/edit',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': '69',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(id)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Delete',
      apiUrl: 'https://liked-positively-labrador.ngrok-free.app/delete',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': '69',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuerryNewCall {
  static Future<ApiCallResponse> call({
    String? name = 'arun',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'querryNew',
      apiUrl: 'https://liked-positively-labrador.ngrok-free.app/find2',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': '69',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<ResultCaseStruct>? resulted(dynamic response) => (getJsonField(
        response,
        r'''$.result''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => ResultCaseStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  static int? exacted(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.exact''',
      ));
}

class SuggestCall {
  static Future<ApiCallResponse> call({
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Suggest',
      apiUrl: 'https://liked-positively-labrador.ngrok-free.app/suggest',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': '69',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? mainSugg(dynamic response) => (getJsonField(
        response,
        r'''$.suggestions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? aiSugg(dynamic response) => (getJsonField(
        response,
        r'''$.aisuggestions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
