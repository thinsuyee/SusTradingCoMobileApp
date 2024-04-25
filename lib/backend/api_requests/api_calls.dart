import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProducts',
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

class SearchProductByIDCall {
  static Future<ApiCallResponse> call({
    String? id = '66213f0a2ed6b137c982fe18',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchProductByID',
      apiUrl:
          'https://1d44-219-75-69-73.ngrok-free.app/api/product/query?id=$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJMTThmeFVtTjQwNmlPZnhFNGd2RWlxdEVUdFVySEdnZm84bUJ4cFNuUmI0In0.eyJleHAiOjE3MTQwNDc5OTksImlhdCI6MTcxNDA0NzY5OSwiYXV0aF90aW1lIjoxNzE0MDQ1OTk2LCJqdGkiOiJiNDBjZjNhNC03NzAyLTQ0NTQtOWNmOC0wNzI4MDZhMTc4ZTEiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjNkNzE2MGI0LTc4OTgtNDFiMi04ODJlLTI1NTg5MDY5MzY3ZCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiJjY2IzYzRjNC1jNGUxLTQwMTktODUwMy02MTgxMzZiMmM5OTEiLCJzZXNzaW9uX3N0YXRlIjoiYTNhOTNiMmQtN2VhMS00NzlhLWIxMmEtYzFiOWRkNzBjOGRiIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIlBST0RVQ1QtREVMRVRFIiwiSU5WRU5UT1JZLUNSRUFURSIsIk9SREVSLURFTEVURSIsIklOVkVOVE9SWS1VUERBVEUiLCJQUk9EVUNULVVQREFURSIsIlBST0RVQ1QtVklFVyIsIkFETUlOIiwiSU5WRU5UT1JZLURFTEVURSIsIlBST0RVQ1QtQ1JFQVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6ImEzYTkzYjJkLTdlYTEtNDc5YS1iMTJhLWMxYjlkZDcwYzhkYiIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6Im1hcnkgdGFuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoibWFyeSIsImdpdmVuX25hbWUiOiJtYXJ5IiwiZmFtaWx5X25hbWUiOiJ0YW4ifQ.Kl8HgvH8h2ZpO_mtl_g3cxvh5scyxAxePWIIHmvuARCy5WjpKwmvaZ5UamtCHpSV2t3dWrgGYNIZYodBTvAxWFxwtQaNNZ8tvzqEQItSkzLBotXr7oXbdwjhxOn4DFh3dDQ11YC5yhEqTJA4UV8f4do8y_3F2QqpXhjFSa1rm1ZPcE8etGp2cfJVr9JBKKIXqqkLu2UVZklc3-d8BCa8aKXoUybXresNLt-NEgTGicm2Tgxo25-rOSE41ke-IJZ1eY_l9oQU211CFm53A3K_UY9pYxmo3WJFXeuHIrh8l4ltpj3hB08TxiJk4wFkXeuay0U0oVCPTS6d0_3jW_frCg',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? singleProductName(dynamic response) => getJsonField(
        response,
        r'''$.name''',
        true,
      ) as List?;
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
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJMTThmeFVtTjQwNmlPZnhFNGd2RWlxdEVUdFVySEdnZm84bUJ4cFNuUmI0In0.eyJleHAiOjE3MTQwNDc5OTksImlhdCI6MTcxNDA0NzY5OSwiYXV0aF90aW1lIjoxNzE0MDQ1OTk2LCJqdGkiOiJiNDBjZjNhNC03NzAyLTQ0NTQtOWNmOC0wNzI4MDZhMTc4ZTEiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjNkNzE2MGI0LTc4OTgtNDFiMi04ODJlLTI1NTg5MDY5MzY3ZCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiJjY2IzYzRjNC1jNGUxLTQwMTktODUwMy02MTgxMzZiMmM5OTEiLCJzZXNzaW9uX3N0YXRlIjoiYTNhOTNiMmQtN2VhMS00NzlhLWIxMmEtYzFiOWRkNzBjOGRiIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIlBST0RVQ1QtREVMRVRFIiwiSU5WRU5UT1JZLUNSRUFURSIsIk9SREVSLURFTEVURSIsIklOVkVOVE9SWS1VUERBVEUiLCJQUk9EVUNULVVQREFURSIsIlBST0RVQ1QtVklFVyIsIkFETUlOIiwiSU5WRU5UT1JZLURFTEVURSIsIlBST0RVQ1QtQ1JFQVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6ImEzYTkzYjJkLTdlYTEtNDc5YS1iMTJhLWMxYjlkZDcwYzhkYiIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6Im1hcnkgdGFuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoibWFyeSIsImdpdmVuX25hbWUiOiJtYXJ5IiwiZmFtaWx5X25hbWUiOiJ0YW4ifQ.Kl8HgvH8h2ZpO_mtl_g3cxvh5scyxAxePWIIHmvuARCy5WjpKwmvaZ5UamtCHpSV2t3dWrgGYNIZYodBTvAxWFxwtQaNNZ8tvzqEQItSkzLBotXr7oXbdwjhxOn4DFh3dDQ11YC5yhEqTJA4UV8f4do8y_3F2QqpXhjFSa1rm1ZPcE8etGp2cfJVr9JBKKIXqqkLu2UVZklc3-d8BCa8aKXoUybXresNLt-NEgTGicm2Tgxo25-rOSE41ke-IJZ1eY_l9oQU211CFm53A3K_UY9pYxmo3WJFXeuHIrh8l4ltpj3hB08TxiJk4wFkXeuay0U0oVCPTS6d0_3jW_frCg',
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

class GetInventoryNotWorkingCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getInventory NotWorking',
      apiUrl: 'https://a671-103-6-150-177.ngrok-free.app/api/inventory',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'en-US,en;q=0.9',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJLZEtYak9zNVNXMl9xVXBtQXZ4bThoZ0U1end3OWxzaFM0V19MQWxHZ3VJIn0.eyJleHAiOjE3MTM4OTIyMDMsImlhdCI6MTcxMzg5MTkwMywiYXV0aF90aW1lIjoxNzEzODg3OTI4LCJqdGkiOiIzNmIxOTI4Ni04M2JhLTRlZWMtYWE0MC1kODE5YWFiZGU4MzciLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6ImZiZDgyZDAzLTE0MjktNDIwOC04NzQ2LTI4NDQxNTQ2ZWQ5MSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiJkMzAxZDBhNS0zYTg2LTQ5M2QtYmE5MC1jNWVjM2Q3NDY1MzQiLCJzZXNzaW9uX3N0YXRlIjoiMWE0ZjBhNzktM2MzMy00NWJkLWJjNDgtNTAwYjZiYTQ3ZDBkIiwiYWNyIjoiMCIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIlBST0RVQ1QtREVMRVRFIiwiSU5WRU5UT1JZLUNSRUFURSIsIk9SREVSLURFTEVURSIsIklOVkVOVE9SWS1VUERBVEUiLCJQUk9EVUNULVVQREFURSIsIlBST0RVQ1QtVklFVyIsIkFETUlOIiwiSU5WRU5UT1JZLURFTEVURSIsIlBST0RVQ1QtQ1JFQVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6IjFhNGYwYTc5LTNjMzMtNDViZC1iYzQ4LTUwMGI2YmE0N2QwZCIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicHJlZmVycmVkX3VzZXJuYW1lIjoiYmVhIn0.bGVUAiWbtc0PgdtDM54eZ8TZNk8uDUvBkpDPvyACWxQAAf0i3q7S9NyTeem3fheruf3dTDf1Cok-gSX28Al5NtDlLQYIhScUQe2x4IsbTFF04Na1KfO56wfnCQcDpBfe0Vf_xT8pSmCXlbMXJPJd5tBwP7_U0flXc5C-SQQqG2OkjXOIHtLL0cZPlu5qTPZjAm35RIv_4VC0-e93RCxV50qmqORgumRzoJCLYloQDrjaUWZbNa0lBuIKJSmIAam59tQ0Cw2vcggEKmm1bzsUo_RhTYlvwkuxw1JbcHcK5Dw9aicK55F1UzM7h5ZJElgFgi4UlECM5nOpujMMFJvcQg',
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

class TestSearchCall {
  static Future<ApiCallResponse> call({
    String? searchValue = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'testSearch',
      apiUrl: 'https://dummyjson.com/products/search?q=$searchValue',
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

  static List? productData(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
}

class TestSingleProductCall {
  static Future<ApiCallResponse> call({
    int? productID,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'test single product',
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
