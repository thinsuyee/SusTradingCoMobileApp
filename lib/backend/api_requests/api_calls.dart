import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TestGetProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'testGetProducts',
      apiUrl: 'https://dummyjson.com/products/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
}

class QueryProductByIDCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'queryProductByID',
      apiUrl:
          'https://1d44-219-75-69-73.ngrok-free.app/api/product/query?id=$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJMTThmeFVtTjQwNmlPZnhFNGd2RWlxdEVUdFVySEdnZm84bUJ4cFNuUmI0In0.eyJleHAiOjE3MTQwNjU1MzIsImlhdCI6MTcxNDA2NTIzMiwiYXV0aF90aW1lIjoxNzE0MDYzNzY3LCJqdGkiOiJlZjc3YTc0My03ZjgxLTQ0MGItYWFhYi0wM2VlZDhlNjI4OTgiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjNkNzE2MGI0LTc4OTgtNDFiMi04ODJlLTI1NTg5MDY5MzY3ZCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiJmMWM5OWZjMS03MTI4LTRiNWItOWRhNy1mOGUzYjNlODhkNGQiLCJzZXNzaW9uX3N0YXRlIjoiZWRjZDE5YzktZjRiOS00Y2M4LWExYzEtYTBmZTkwNjU1NjU4IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIlBST0RVQ1QtREVMRVRFIiwiSU5WRU5UT1JZLUNSRUFURSIsIk9SREVSLURFTEVURSIsIklOVkVOVE9SWS1VUERBVEUiLCJQUk9EVUNULVVQREFURSIsIlBST0RVQ1QtVklFVyIsIkFETUlOIiwiSU5WRU5UT1JZLURFTEVURSIsIlBST0RVQ1QtQ1JFQVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6ImVkY2QxOWM5LWY0YjktNGNjOC1hMWMxLWEwZmU5MDY1NTY1OCIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6Im1hcnkgdGFuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoibWFyeSIsImdpdmVuX25hbWUiOiJtYXJ5IiwiZmFtaWx5X25hbWUiOiJ0YW4ifQ.INlZbcOr1LHrP0by4BiwsGC0IHvVhOjZXeTZC7y_ZPzSwZ6GfvXLhAe-NmO5T1oSrXtjaG3zll2ZmQVy-lxl0SzW3gNYaecTzYKsMtzELgIQF_t35Tu7KNxHqlUIXn558XVehGeJW7y_sBGeDpApBfgjcCaliUW1S39IUwzZ1aXTFkhmp59nOVhOXsWzLieAMMK661f7QY5SydPBNk3QPvJi9kvsnR28CcS-veuhcMgZJjXNpCXObkMd3l_ouWeYK9_H7GZhokjvU-glNU4st5A9e2xfFGr0KlhJZxSOfJlC1iT2qejFIrhu6F1vOeD4RQyV2i6YNptxmH5gFEujLA',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? products(dynamic response) => (getJsonField(
        response,
        r'''$.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AccountCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Account',
      apiUrl:
          'http://keycloak:8080/realms/SusCompanyRealm/protocol/openid-connect/token',
      callType: ApiCallType.POST,
      headers: {
        'Accept': '*/*',
        'Accept-Encoding': 'gzip, deflate',
        'Accept-Language': 'en-US,en;q=0.9',
        'Content-Length': '328',
        'Content-type': 'application/x-www-form-urlencoded',
        'Connection': 'keep-alive',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateProductCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateProduct',
      apiUrl: 'https://373e-219-75-69-73.ngrok-free.app/api/product',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJMTThmeFVtTjQwNmlPZnhFNGd2RWlxdEVUdFVySEdnZm84bUJ4cFNuUmI0In0.eyJleHAiOjE3MTM2NDY5MzMsImlhdCI6MTcxMzY0NjYzMywiYXV0aF90aW1lIjoxNzEzNjQ1NzUxLCJqdGkiOiJmZDY3MjQwZi1hYjQ4LTQwNWMtOTQ1NC04MDY1Mjk5YjVjNTkiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjNkNzE2MGI0LTc4OTgtNDFiMi04ODJlLTI1NTg5MDY5MzY3ZCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiIwZGEzN2Q5NC01MmQzLTQ2ZWYtOTE1Zi05M2YwMTdhMGY3Y2YiLCJzZXNzaW9uX3N0YXRlIjoiOGRjMjNiZGEtYmQ2MS00OTY0LTk3OWEtNTJiMDU1ZTlkNDY0IiwiYWNyIjoiMCIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIlBST0RVQ1QtREVMRVRFIiwiSU5WRU5UT1JZLUNSRUFURSIsIk9SREVSLURFTEVURSIsIklOVkVOVE9SWS1VUERBVEUiLCJQUk9EVUNULVVQREFURSIsIlBST0RVQ1QtVklFVyIsIkFETUlOIiwiSU5WRU5UT1JZLURFTEVURSIsIlBST0RVQ1QtQ1JFQVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6IjhkYzIzYmRhLWJkNjEtNDk2NC05NzlhLTUyYjA1NWU5ZDQ2NCIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6Im1hcnkgdGFuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoibWFyeSIsImdpdmVuX25hbWUiOiJtYXJ5IiwiZmFtaWx5X25hbWUiOiJ0YW4ifQ.RTtDkMJnXVPStOLJ0wc1SH_bPiFOCWWd6XYSbHJdnUybqOf7H4sGa1JkxaeqcxHQc-TW5dNeFuUi0orEwzcgbZ3sr0OcwwVpkHPZBWJyBrzg7X_i4W2y-URY4grK2z4AFJEpJj1Cm6ShERdwYpjPwd0xiSzrGQOOf5zDbFdILClqqVwecX4_N1Ph6PvdH-YOfSABZaCjiESq9YpL_F7S3CbubNDGYbV_dw49j6lr8etI6tHraLQehiy1wlyAB8679GGshvSc6NIvgAITy4ADnQDnIIV66opdaMLQ0JokMClFZsMANsfs2IBP3FDfgK6bGBwWQrT4UBCVLeTlN_K6BA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SingleProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'SingleProducts',
      apiUrl: 'https://373e-219-75-69-73.ngrok-free.app/api/product',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJMTThmeFVtTjQwNmlPZnhFNGd2RWlxdEVUdFVySEdnZm84bUJ4cFNuUmI0In0.eyJleHAiOjE3MTM2NDg3MTgsImlhdCI6MTcxMzY0ODQxOCwiYXV0aF90aW1lIjoxNzEzNjQ1NzUxLCJqdGkiOiI2Y2I1NDkyNi1lMGFiLTQ4NGMtYjMyOC0xY2JjZmIzOTMzNzEiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjNkNzE2MGI0LTc4OTgtNDFiMi04ODJlLTI1NTg5MDY5MzY3ZCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiI5MTVkY2U3MS01ZmY2LTQwNjgtODZhNi05YThiZDFlZWMzN2UiLCJzZXNzaW9uX3N0YXRlIjoiOGRjMjNiZGEtYmQ2MS00OTY0LTk3OWEtNTJiMDU1ZTlkNDY0IiwiYWNyIjoiMCIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIlBST0RVQ1QtREVMRVRFIiwiSU5WRU5UT1JZLUNSRUFURSIsIk9SREVSLURFTEVURSIsIklOVkVOVE9SWS1VUERBVEUiLCJQUk9EVUNULVVQREFURSIsIlBST0RVQ1QtVklFVyIsIkFETUlOIiwiSU5WRU5UT1JZLURFTEVURSIsIlBST0RVQ1QtQ1JFQVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6IjhkYzIzYmRhLWJkNjEtNDk2NC05NzlhLTUyYjA1NWU5ZDQ2NCIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6Im1hcnkgdGFuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoibWFyeSIsImdpdmVuX25hbWUiOiJtYXJ5IiwiZmFtaWx5X25hbWUiOiJ0YW4ifQ.cue9KT36xcZHsgQg6WW1TUUii5LETDaJj_HQgS5BAUjESm9RQEaPC6y9CQvYjwnJJoDqdOxZD9vR39YkntfvCBrgF2RksX3bFmNp9cY8qZj5T_YYacjSLWuWCqWX6Q-w2hIXc_WsfzD4hJcfLLBMY4x1r6awRnYisKZsZhumFMcOgecqKL44Hifpc7yzP-bYhw2JaDTY0DmANbycaURMi4mOT5aHTIaSovPvPdCrII-3pYYLRd7y2dxSFc8XgO_-BrgbSMlARpyiaQzT2n-su14dKWVuHMEr3Iqv3repVEQ7QXIUYFlofPdD-bAVUCw8aMeEKoCjlw7XiQijaSCs0A',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'en-US, en;q=0.9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductsAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductsAPI',
      apiUrl: 'https://1d44-219-75-69-73.ngrok-free.app/api/product',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'en-US,en;q=0.9',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJMTThmeFVtTjQwNmlPZnhFNGd2RWlxdEVUdFVySEdnZm84bUJ4cFNuUmI0In0.eyJleHAiOjE3MTQwNjU1MzIsImlhdCI6MTcxNDA2NTIzMiwiYXV0aF90aW1lIjoxNzE0MDYzNzY3LCJqdGkiOiJlZjc3YTc0My03ZjgxLTQ0MGItYWFhYi0wM2VlZDhlNjI4OTgiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjNkNzE2MGI0LTc4OTgtNDFiMi04ODJlLTI1NTg5MDY5MzY3ZCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiJmMWM5OWZjMS03MTI4LTRiNWItOWRhNy1mOGUzYjNlODhkNGQiLCJzZXNzaW9uX3N0YXRlIjoiZWRjZDE5YzktZjRiOS00Y2M4LWExYzEtYTBmZTkwNjU1NjU4IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIlBST0RVQ1QtREVMRVRFIiwiSU5WRU5UT1JZLUNSRUFURSIsIk9SREVSLURFTEVURSIsIklOVkVOVE9SWS1VUERBVEUiLCJQUk9EVUNULVVQREFURSIsIlBST0RVQ1QtVklFVyIsIkFETUlOIiwiSU5WRU5UT1JZLURFTEVURSIsIlBST0RVQ1QtQ1JFQVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6ImVkY2QxOWM5LWY0YjktNGNjOC1hMWMxLWEwZmU5MDY1NTY1OCIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6Im1hcnkgdGFuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoibWFyeSIsImdpdmVuX25hbWUiOiJtYXJ5IiwiZmFtaWx5X25hbWUiOiJ0YW4ifQ.INlZbcOr1LHrP0by4BiwsGC0IHvVhOjZXeTZC7y_ZPzSwZ6GfvXLhAe-NmO5T1oSrXtjaG3zll2ZmQVy-lxl0SzW3gNYaecTzYKsMtzELgIQF_t35Tu7KNxHqlUIXn558XVehGeJW7y_sBGeDpApBfgjcCaliUW1S39IUwzZ1aXTFkhmp59nOVhOXsWzLieAMMK661f7QY5SydPBNk3QPvJi9kvsnR28CcS-veuhcMgZJjXNpCXObkMd3l_ouWeYK9_H7GZhokjvU-glNU4st5A9e2xfFGr0KlhJZxSOfJlC1iT2qejFIrhu6F1vOeD4RQyV2i6YNptxmH5gFEujLA',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllInventoryCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllInventory',
      apiUrl: 'https://bed0-103-6-150-177.ngrok-free.app/api/inventory',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'en-US,en;q=0.9',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJLZEtYak9zNVNXMl9xVXBtQXZ4bThoZ0U1end3OWxzaFM0V19MQWxHZ3VJIn0.eyJleHAiOjE3MTQwNTg3NjAsImlhdCI6MTcxNDA1ODQ2MCwiYXV0aF90aW1lIjoxNzE0MDU4NDYwLCJqdGkiOiI5Y2VmMDUzOC04ZWE5LTRiYzctYTc2Yy1iNTk2MjQ1YTZiZjMiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6ImZiZDgyZDAzLTE0MjktNDIwOC04NzQ2LTI4NDQxNTQ2ZWQ5MSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiJjY2UyNWZhNS1iZWM1LTRkMDItOGIxYi0zMTlhMTllNzY3NjgiLCJzZXNzaW9uX3N0YXRlIjoiZGZkYmE3ZDUtOGUwNy00OWE4LTlhZDctNTAxMTAxM2Y0ZjViIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6ImRmZGJhN2Q1LThlMDctNDlhOC05YWQ3LTUwMTEwMTNmNGY1YiIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicHJlZmVycmVkX3VzZXJuYW1lIjoiYmVhIn0.lGbqw_orCrZbvPx5teaqUd8VBusW1O2MzClveo3UEDs5_oDC59wSAmlnKjm5a5paZAA83JPoRm2_SXRfYllf5aO73k13WBnQOpzTDGz5BBZaoiiZs_vBtxkQT2AQwxhFD8exOtp3-bMafpCXqrC2cBp0YQlKW8sbdmCpJnBZxj4x3aOTTlay_hOY3EkBeMS3OruSyPumHUSD24Gf2sJ1fELFAanozVJi8oMUtOjtRxpI1OEbHkd9nvJgIUnqkMhqMFPugEFc6S0R9vlavP4Mt8UC6f-iidQW3njI2mcS7lhw6T8GiIbroKuuTTZEsmcAYfGuG5li8y4T65IdYaeRCw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateInventoryCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
    "skuCode": "4322",
    "quantity": 120,
    "productId": "6627cb7576c2ba5b31752377"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createInventory',
      apiUrl: 'http://bed0-103-6-150-177.ngrok-free.app/api/inventory',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJLZEtYak9zNVNXMl9xVXBtQXZ4bThoZ0U1end3OWxzaFM0V19MQWxHZ3VJIn0.eyJleHAiOjE3MTQwNTg3NjAsImlhdCI6MTcxNDA1ODQ2MCwiYXV0aF90aW1lIjoxNzE0MDU4NDYwLCJqdGkiOiI5Y2VmMDUzOC04ZWE5LTRiYzctYTc2Yy1iNTk2MjQ1YTZiZjMiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6ImZiZDgyZDAzLTE0MjktNDIwOC04NzQ2LTI4NDQxNTQ2ZWQ5MSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiJjY2UyNWZhNS1iZWM1LTRkMDItOGIxYi0zMTlhMTllNzY3NjgiLCJzZXNzaW9uX3N0YXRlIjoiZGZkYmE3ZDUtOGUwNy00OWE4LTlhZDctNTAxMTAxM2Y0ZjViIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6ImRmZGJhN2Q1LThlMDctNDlhOC05YWQ3LTUwMTEwMTNmNGY1YiIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicHJlZmVycmVkX3VzZXJuYW1lIjoiYmVhIn0.lGbqw_orCrZbvPx5teaqUd8VBusW1O2MzClveo3UEDs5_oDC59wSAmlnKjm5a5paZAA83JPoRm2_SXRfYllf5aO73k13WBnQOpzTDGz5BBZaoiiZs_vBtxkQT2AQwxhFD8exOtp3-bMafpCXqrC2cBp0YQlKW8sbdmCpJnBZxj4x3aOTTlay_hOY3EkBeMS3OruSyPumHUSD24Gf2sJ1fELFAanozVJi8oMUtOjtRxpI1OEbHkd9nvJgIUnqkMhqMFPugEFc6S0R9vlavP4Mt8UC6f-iidQW3njI2mcS7lhw6T8GiIbroKuuTTZEsmcAYfGuG5li8y4T65IdYaeRCw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TestGetSingleProductCall {
  static Future<ApiCallResponse> call({
    int? productID,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'testGetSingleProduct',
      apiUrl: 'https://dummyjson.com/products/$productID',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
