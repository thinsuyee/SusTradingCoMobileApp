import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'products_widget.dart' show ProductsWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProductsModel extends FlutterFlowModel<ProductsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ProductsRecord> simpleSearchResults = [];
  // State field(s) for withoutSearch widget.

  PagingController<ApiPagingParams, dynamic>? withoutSearchPagingController;
  Function(ApiPagingParams nextPageMarker)? withoutSearchApiCall;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    withoutSearchPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setWithoutSearchController(
    Function(ApiPagingParams) apiCall,
  ) {
    withoutSearchApiCall = apiCall;
    return withoutSearchPagingController ??=
        _createWithoutSearchController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createWithoutSearchController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(withoutSearchGetProductsPage);
  }

  void withoutSearchGetProductsPage(ApiPagingParams nextPageMarker) =>
      withoutSearchApiCall!(nextPageMarker)
          .then((withoutSearchGetProductsResponse) {
        final pageItems = (GetProductsCall.products(
                  withoutSearchGetProductsResponse.jsonBody,
                )! ??
                [])
            .take(5 - nextPageMarker.numItems)
            .toList();
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        withoutSearchPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty) && newNumItems < 5
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: withoutSearchGetProductsResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForWithoutSearch({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (withoutSearchPagingController?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
