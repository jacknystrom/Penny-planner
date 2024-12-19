import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'info_model.dart';
export 'info_model.dart';

class InfoWidget extends StatefulWidget {
  const InfoWidget({
    super.key,
    required this.transactions,
    required this.recurringTransactions,
  });

  final TransactionsRecord? transactions;
  final RecurringTransactionsRecord? recurringTransactions;

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> with TickerProviderStateMixin {
  late InfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'info'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chartPieChartColorsList = [
      const Color(0xFFAD2B2E),
      const Color(0xFF00FF0A),
      const Color(0xFF0026FF),
      const Color(0xFFFAE204),
      const Color(0xFFE309F3),
      const Color(0xFFFE9104),
      const Color(0xFF2F1F86),
      const Color(0xFFC5C5D4),
      const Color(0xFF0CFCF1)
    ];
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
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: GradientText(
                          'Here is some information about your spending habits.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 0.0,
                              ),
                          colors: const [Color(0xFF1A5841), Color(0xFF2BA174)],
                          gradientDirection: GradientDirection.btt,
                          gradientType: GradientType.linear,
                        ),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('INFO_PAGE__BTN_ON_TAP');
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed('home');
                    },
                    text: '',
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF2BA174),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Inter Tight',
                          letterSpacing: 0.0,
                          shadows: [
                            const Shadow(
                              color: Color(0x6A57636C),
                              offset: Offset(2.0, 2.0),
                              blurRadius: 2.0,
                            )
                          ],
                        ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                        indicatorColor: const Color(0xFF278B53),
                        tabs: const [
                          Tab(
                            text: 'Recurring',
                          ),
                          Tab(
                            text: 'categories',
                          ),
                          Tab(
                            text: 'overall',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 20.0, 10.0, 30.0),
                                    child: GradientText(
                                      'Recurring Payments',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            letterSpacing: 0.0,
                                          ),
                                      colors: [
                                        const Color(0xFF3C3A4B),
                                        FlutterFlowTheme.of(context).secondary
                                      ],
                                      gradientDirection: GradientDirection.btt,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        height: 50.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFF4F4F4),
                                        ),
                                        child: Text(
                                          'Amount',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Inter Tight',
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        height: 50.0,
                                        decoration: const BoxDecoration(),
                                        child: Text(
                                          'Frequency',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Inter Tight',
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        height: 50.0,
                                        decoration: const BoxDecoration(),
                                        child: Text(
                                          'Category',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Inter Tight',
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 20.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Builder(
                                        builder: (context) {
                                          final rt = widget
                                                  .recurringTransactions
                                                  ?.amounts
                                                  .toList() ??
                                              [];

                                          return ListView.builder(
                                            key: const ValueKey('ListView_wtil'),
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: rt.length,
                                            itemBuilder: (context, rtIndex) {
                                              final rtItem = rt[rtIndex];
                                              return Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  height: 50.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Text(
                                                    rtItem.toString(),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          fontSize: 24.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Builder(
                                        builder: (context) {
                                          final rt = widget
                                                  .recurringTransactions
                                                  ?.frequencies
                                                  .toList() ??
                                              [];

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: rt.length,
                                            itemBuilder: (context, rtIndex) {
                                              final rtItem = rt[rtIndex];
                                              return Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  height: 50.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Text(
                                                    rtItem,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          fontSize: 24.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Builder(
                                        builder: (context) {
                                          final rt = widget
                                                  .recurringTransactions
                                                  ?.categories
                                                  .toList() ??
                                              [];

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: rt.length,
                                            itemBuilder: (context, rtIndex) {
                                              final rtItem = rt[rtIndex];
                                              return Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  height: 50.0,
                                                  decoration: const BoxDecoration(),
                                                  child: AutoSizeText(
                                                    rtItem,
                                                    textAlign: TextAlign.center,
                                                    minFontSize: 15.0,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: GradientText(
                                      'Spending Habits Visualized',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            letterSpacing: 0.0,
                                          ),
                                      colors: [
                                        const Color(0xFF3C3A4B),
                                        FlutterFlowTheme.of(context).secondary
                                      ],
                                      gradientDirection: GradientDirection.btt,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.396,
                                  child: Stack(
                                    children: [
                                      FlutterFlowPieChart(
                                        data: FFPieChartData(
                                          values: functions.getCategoryNums(
                                              functions
                                                  .getCategoryNames(widget
                                                      .transactions!.category
                                                      .toList())
                                                  .toList(),
                                              widget.transactions!.category
                                                  .toList()),
                                          colors: chartPieChartColorsList,
                                          radius: [100.0],
                                        ),
                                        donutHoleRadius: 20.0,
                                        donutHoleColor: Colors.transparent,
                                        sectionLabelType:
                                            PieChartSectionLabelType.percent,
                                        sectionLabelStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Inter Tight',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: FlutterFlowChartLegendWidget(
                                          entries: functions
                                              .getCategoryNames(widget
                                                  .transactions!.category
                                                  .toList())
                                              .asMap()
                                              .entries
                                              .map(
                                                (label) => LegendEntry(
                                                  chartPieChartColorsList[label
                                                          .key %
                                                      chartPieChartColorsList
                                                          .length],
                                                  label.value,
                                                ),
                                              )
                                              .toList(),
                                          width: 200.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          textPadding: const EdgeInsets.all(2.0),
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          borderWidth: 1.0,
                                          indicatorSize: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                child: GradientText(
                                  'Enter a number of days to view your total gain/loss over that period up to now.',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                  colors: const [
                                    Color(0xFF3C3A4B),
                                    Color(0xFF2BA193)
                                  ],
                                  gradientDirection: GradientDirection.btt,
                                  gradientType: GradientType.linear,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: Text(
                                  valueOrDefault<String>(
                                    functions.spent(
                                        widget.transactions!.amounts.toList(),
                                        widget.transactions!.dates.toList(),
                                        _model.days),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              SizedBox(
                                width: 200.0,
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  onFieldSubmitted: (_) async {
                                    logFirebaseEvent(
                                        'INFO_TextField_e5bu9y75_ON_TEXTFIELD_SUB');
                                    if (!(_model.textController.text != '')) {
                                      return;
                                    }
                                    logFirebaseEvent(
                                        'TextField_update_page_state');
                                    _model.days =
                                        int.parse(_model.textController.text);
                                    safeSetState(() {});
                                  },
                                  autofocus: false,
                                  textInputAction: TextInputAction.done,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Enter the # of days',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF716464),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0x8D418B4E),
                                    hoverColor: const Color(0xFFBFBDBD),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 30.0,
                                        letterSpacing: 0.0,
                                      ),
                                  keyboardType: TextInputType.number,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp('[0-9]'))
                                  ],
                                ),
                              ),
                            ].divide(const SizedBox(height: 150.0)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ].divide(const SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
