import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'product_list_copy_widget.dart' show ProductListCopyWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProductListCopyModel extends FlutterFlowModel<ProductListCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  final searchBarKey = GlobalKey();
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? searchBarSelectedOption;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  List<ProductsRecord> simpleSearchResults = [];
  // State field(s) for withoutSearch widget.

  PagingController<ApiPagingParams, dynamic>? withoutSearchPagingController;
  Function(ApiPagingParams nextPageMarker)? withoutSearchApiCall;

  // State field(s) for searchResult widget.

  PagingController<ApiPagingParams, dynamic>? searchResultPagingController;
  Function(ApiPagingParams nextPageMarker)? searchResultApiCall;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();

    withoutSearchPagingController?.dispose();
    searchResultPagingController?.dispose();
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
    return controller..addPageRequestListener(withoutSearchGetProductsAPIPage);
  }

  void withoutSearchGetProductsAPIPage(ApiPagingParams nextPageMarker) =>
      withoutSearchApiCall!(nextPageMarker)
          .then((withoutSearchGetProductsAPIResponse) {
        final pageItems = (withoutSearchGetProductsAPIResponse.jsonBody ?? [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        withoutSearchPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: withoutSearchGetProductsAPIResponse,
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

  PagingController<ApiPagingParams, dynamic> setSearchResultController(
    Function(ApiPagingParams) apiCall,
  ) {
    searchResultApiCall = apiCall;
    return searchResultPagingController ??=
        _createSearchResultController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createSearchResultController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(searchResultGetProductsAPIPage);
  }

  void searchResultGetProductsAPIPage(ApiPagingParams nextPageMarker) =>
      searchResultApiCall!(nextPageMarker)
          .then((searchResultGetProductsAPIResponse) {
        final pageItems = (searchResultGetProductsAPIResponse.jsonBody ?? [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        searchResultPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: searchResultGetProductsAPIResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForSearchResult({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (searchResultPagingController?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
