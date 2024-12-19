import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetLinkTokenCall {
  static Future<ApiCallResponse> call({
    String? uid = '1234',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(uid)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getLinkToken',
      apiUrl: 'https://createlinktoken-zbguluzd7q-uc.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
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

  static String? linkToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.linkToken''',
      ));
}

class GetAccessTokenCall {
  static Future<ApiCallResponse> call({
    String? publicToken = '0',
  }) async {
    final ffApiRequestBody = '''
{
  "publicToken": "${escapeStringForJson(publicToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getAccessToken',
      apiUrl: 'https://storeaccesstoken-zbguluzd7q-uc.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
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

  static dynamic accessToken(dynamic response) => getJsonField(
        response,
        r'''$.AccessToken''',
      );
}

class GetTransactionsCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? cursor,
  }) async {

    final ffApiRequestBody = '''
{
  "AccessToken": "${escapeStringForJson(accessToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTransactions',
      apiUrl: 'https://gettransactions-zbguluzd7q-uc.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
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

  static List<double>? amounts(dynamic response) => (getJsonField(
        response,
        r'''$.transactions.added[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? merchantNames(dynamic response) => (getJsonField(
        response,
        r'''$.transactions.added[:].merchant_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? paymentChannel(dynamic response) => (getJsonField(
        response,
        r'''$.transactions.added[:].payment_channel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.transactions.added[:].personal_finance_category.primary''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? balances(dynamic response) => (getJsonField(
        response,
        r'''$.transactions.accounts[:].balances.current''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? dates(dynamic response) => (getJsonField(
        response,
        r'''$.transactions.added[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetRecurringTransactionsCall {
  static Future<ApiCallResponse> call({
    String? accessToken,
  }) async {

    final ffApiRequestBody = '''
{
  "AccessToken": "${escapeStringForJson(accessToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getRecurringTransactions',
      apiUrl: 'https://getrecurringtransactions-zbguluzd7q-uc.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
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

  static List? averages(dynamic response) => getJsonField(
        response,
        r'''$.transactions.outflow_streams[:].average_amount''',
        true,
      ) as List?;
  static List<String>? frequency(dynamic response) => (getJsonField(
        response,
        r'''$.transactions.outflow_streams[:].frequency''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? amounts(dynamic response) => (getJsonField(
        response,
        r'''$.transactions.outflow_streams[:].last_amount.amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? categories(dynamic response) => (getJsonField(
        response,
        r'''$.transactions.outflow_streams[:].personal_finance_category.primary''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CheckAccessCall {
  static Future<ApiCallResponse> call({
    String? accessToken,
  }) async {

    final ffApiRequestBody = '''
{
  "AccessToken": "${escapeStringForJson(accessToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'checkAccess',
      apiUrl: 'https://checkaccesstoken-zbguluzd7q-uc.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
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
  if (item is DocumentReference) {
    return item.path;
  }
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
