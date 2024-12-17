import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/challenge_widget.dart';
import '/components/net_promoter_score_component_widget.dart';
import '/components/predefined_challenges_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'home'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_PAGE_home_ON_INIT_STATE');
      if (!valueOrDefault<bool>(currentUserDocument?.nps, false)) {
        logFirebaseEvent('home_bottom_sheet');
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          enableDrag: false,
          context: context,
          builder: (context) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: const NetPromoterScoreComponentWidget(),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/image.png',
                  width: 348.0,
                  height: 100.0,
                  fit: BoxFit.contain,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'HOME_Pre-definedChallengesButton_ON_TAP');
                        logFirebaseEvent(
                            'Pre-definedChallengesButton_navigate_to');

                        context.goNamed('completed');
                      },
                      text: 'Completed',
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xBFFFFFFF),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Inter Tight',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'HOME_Pre-definedChallengesButton_ON_TAP');
                        logFirebaseEvent(
                            'Pre-definedChallengesButton_bottom_sheet');
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const PredefinedChallengesWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      text: 'Challenges',
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xEEFFFFFF),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Inter Tight',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'HOME_PAGE_CreateYourOwnButton_ON_TAP');
                        logFirebaseEvent('CreateYourOwnButton_navigate_to');

                        context.goNamed(
                          'taskcreation',
                          queryParameters: {
                            'date': serializeParam(
                              getCurrentTimestamp,
                              ParamType.DateTime,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'Create',
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 0.41,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFDFFFFFF),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Inter Tight',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                            ),
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('HOME_PAGE_infoButton_ON_TAP');
                          var shouldSetState = false;
                          logFirebaseEvent('infoButton_backend_call');
                          _model.user = await UsersRecord.getDocumentOnce(
                              currentUserReference!);
                          shouldSetState = true;
                          logFirebaseEvent('infoButton_backend_call');
                          _model.newTransactions =
                              await GetTransactionsCall.call(
                            accessToken: _model.user?.accesToken,
                            cursor: 'lll',
                          );

                          shouldSetState = true;
                          if ((_model.newTransactions?.succeeded ?? true)) {
                            logFirebaseEvent('infoButton_firestore_query');
                            _model.transactions =
                                await queryTransactionsRecordOnce(
                              queryBuilder: (transactionsRecord) =>
                                  transactionsRecord.where(
                                'uid',
                                isEqualTo: _model.user?.uid,
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            shouldSetState = true;
                          } else {
                            if (shouldSetState) safeSetState(() {});
                            return;
                          }

                          logFirebaseEvent('infoButton_backend_call');

                          await _model.transactions!.reference.update({
                            ...mapToFirestore(
                              {
                                'amounts': GetTransactionsCall.amounts(
                                  (_model.newTransactions?.jsonBody ?? ''),
                                ),
                                'merchantNames':
                                    GetTransactionsCall.merchantNames(
                                  (_model.newTransactions?.jsonBody ?? ''),
                                ),
                                'paymentChannels':
                                    GetTransactionsCall.paymentChannel(
                                  (_model.newTransactions?.jsonBody ?? ''),
                                ),
                                'category': GetTransactionsCall.category(
                                  (_model.newTransactions?.jsonBody ?? ''),
                                ),
                                'balances': GetTransactionsCall.balances(
                                  (_model.newTransactions?.jsonBody ?? ''),
                                ),
                                'dates': functions
                                    .stringToDate(GetTransactionsCall.dates(
                                  (_model.newTransactions?.jsonBody ?? ''),
                                )!
                                        .toList()),
                              },
                            ),
                          });
                          logFirebaseEvent('infoButton_backend_call');
                          _model.rTransactions =
                              await GetRecurringTransactionsCall.call(
                            accessToken: _model.user?.accesToken,
                          );

                          shouldSetState = true;
                          logFirebaseEvent('infoButton_firestore_query');
                          _model.recurring =
                              await queryRecurringTransactionsRecordOnce(
                            queryBuilder: (recurringTransactionsRecord) =>
                                recurringTransactionsRecord.where(
                              'uid',
                              isEqualTo: _model.user?.uid,
                            ),
                            singleRecord: true,
                          ).then((s) => s.firstOrNull);
                          shouldSetState = true;
                          logFirebaseEvent('infoButton_backend_call');

                          await _model.recurring!.reference.update({
                            ...mapToFirestore(
                              {
                                'amounts': GetRecurringTransactionsCall.amounts(
                                  (_model.rTransactions?.jsonBody ?? ''),
                                ),
                                'frequencies':
                                    GetRecurringTransactionsCall.frequency(
                                  (_model.rTransactions?.jsonBody ?? ''),
                                ),
                                'categories':
                                    GetRecurringTransactionsCall.categories(
                                  (_model.rTransactions?.jsonBody ?? ''),
                                ),
                              },
                            ),
                          });
                          logFirebaseEvent('infoButton_navigate_to');

                          context.pushNamed(
                            'info',
                            queryParameters: {
                              'transactions': serializeParam(
                                _model.transactions,
                                ParamType.Document,
                              ),
                              'recurringTransactions': serializeParam(
                                _model.recurring,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'transactions': _model.transactions,
                              'recurringTransactions': _model.recurring,
                            },
                          );

                          if (shouldSetState) safeSetState(() {});
                        },
                        text: 'Info',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.42,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xEEFFFFFF),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Inter Tight',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                              ),
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: const Color(0xC8CECECE),
                      icon: const Icon(
                        Icons.settings_sharp,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('HOME_PAGE_settings_sharp_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('settings');
                      },
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[].divide(const SizedBox(width: 15.0)),
                  ),
                ].divide(const SizedBox(height: 10.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Total Points',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => GradientText(
                              valueOrDefault<String>(
                                valueOrDefault(
                                        currentUserDocument?.userPoints, 0.0)
                                    .toString(),
                                '0',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              colors: const [Color(0xFFE6E4E4), Color(0xF7383838)],
                              gradientDirection: GradientDirection.ttb,
                              gradientType: GradientType.linear,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 390.0,
                    height: 545.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Container(
                            width: 519.0,
                            height: 545.0,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  6.0, 6.0, 6.0, 0.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    StreamBuilder<List<TasksRecord>>(
                                      stream: queryTasksRecord(
                                        queryBuilder: (tasksRecord) =>
                                            tasksRecord
                                                .where(
                                                  'owner',
                                                  isEqualTo:
                                                      currentUserReference,
                                                )
                                                .where(
                                                  'complete',
                                                  isEqualTo: false,
                                                ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<TasksRecord>
                                            listViewTasksRecordList =
                                            snapshot.data!;

                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewTasksRecordList.length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(height: 10.0),
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewTasksRecord =
                                                listViewTasksRecordList[
                                                    listViewIndex];
                                            return ChallengeWidget(
                                              key: Key(
                                                  'Keye4g_${listViewIndex}_of_${listViewTasksRecordList.length}'),
                                              document: listViewTasksRecord,
                                              completed: () async {
                                                logFirebaseEvent(
                                                    'HOME_PAGE_Container_e4g6lr6s_CALLBACK');
                                                logFirebaseEvent(
                                                    'Challenge_backend_call');

                                                await listViewTasksRecord
                                                    .reference
                                                    .update(
                                                        createTasksRecordData(
                                                  complete: true,
                                                ));
                                              },
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ].divide(const SizedBox(height: 15.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
