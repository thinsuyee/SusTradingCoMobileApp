import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'product_list_widget.dart' show ProductListWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProductListModel extends FlutterFlowModel<ProductListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  final searchBarKey = GlobalKey();
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? searchBarSelectedOption;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  List<ProductsRecord> simpleSearchResults = [];
  // State field(s) for AllProductList widget.

  PagingController<ApiPagingParams, dynamic>? allProductListPagingController;
  Function(ApiPagingParams nextPageMarker)? allProductListApiCall;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();

    allProductListPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setAllProductListController(
    Function(ApiPagingParams) apiCall,
  ) {
    allProductListApiCall = apiCall;
    return allProductListPagingController ??=
        _createAllProductListController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createAllProductListController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(allProductListGetProductsAPIPage);
  }

  void allProductListGetProductsAPIPage(ApiPagingParams nextPageMarker) =>
      allProductListApiCall!(nextPageMarker)
          .then((allProductListGetProductsAPIResponse) {
        final pageItems = (allProductListGetProductsAPIResponse.jsonBody ?? [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        allProductListPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: allProductListGetProductsAPIResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForAllProductList({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (allProductListPagingController?.nextPageKey?.nextPageNumber ?? 0) >
              0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
