import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'inventory_main_model.dart';
export 'inventory_main_model.dart';

class InventoryMainWidget extends StatefulWidget {
  const InventoryMainWidget({super.key});

  @override
  State<InventoryMainWidget> createState() => _InventoryMainWidgetState();
}

class _InventoryMainWidgetState extends State<InventoryMainWidget> {
  late InventoryMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InventoryMainModel());

    _model.searchBarTextController ??= TextEditingController();
    _model.searchBarFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Inventory',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Outfit',
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: FutureBuilder<ApiCallResponse>(
          future: GetProductsAPICall.call(),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            final columnGetProductsAPIResponse = snapshot.data!;
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.searchBarTextController,
                          focusNode: _model.searchBarFocusNode,
                          textCapitalization: TextCapitalization.words,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Search SKU code',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 20.0, 24.0),
                            prefixIcon: Icon(
                              Icons.search,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          validator: _model.searchBarTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        icon: Icon(
                          Icons.add_circle,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'AddUpdateInventory',
                            queryParameters: {
                              'inventoryTitle': serializeParam(
                                'Add New Item',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: RefreshIndicator(
                    onRefresh: () async {
                      setState(
                          () => _model.listViewPagingController?.refresh());
                      await _model.waitForOnePageForListView();
                    },
                    child: PagedListView<ApiPagingParams, dynamic>(
                      pagingController: _model.setListViewController(
                        (nextPageMarker) => GetProductsAPICall.call(),
                      ),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      reverse: false,
                      scrollDirection: Axis.vertical,
                      builderDelegate: PagedChildBuilderDelegate<dynamic>(
                        // Customize what your widget looks like when it's loading the first page.
                        firstPageProgressIndicatorBuilder: (_) => Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        ),
                        // Customize what your widget looks like when it's loading another page.
                        newPageProgressIndicatorBuilder: (_) => Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        ),

                        itemBuilder: (context, _, inventoryDataIndex) {
                          final inventoryDataItem = _model
                              .listViewPagingController!
                              .itemList![inventoryDataIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Color(0x411D2429),
                                    offset: Offset(
                                      0.0,
                                      1.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 4.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 30.0),
                                                child: Text(
                                                  getJsonField(
                                                    inventoryDataItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Text(
                                                getJsonField(
                                                  inventoryDataItem,
                                                  r'''$.description''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 8.0, 0.0),
                                              child: AutoSizeText(
                                                getJsonField(
                                                  inventoryDataItem,
                                                  r'''$.price''',
                                                )
                                                    .toString()
                                                    .maybeHandleOverflow(
                                                      maxChars: 70,
                                                      replacement: '…',
                                                    ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            color: Color(0xFF57636C),
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
