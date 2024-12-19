import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'deatils_model.dart';
export 'deatils_model.dart';

class DeatilsWidget extends StatefulWidget {
  const DeatilsWidget({
    super.key,
    required this.task,
  });

  final TasksRecord? task;

  @override
  State<DeatilsWidget> createState() => _DeatilsWidgetState();
}

class _DeatilsWidgetState extends State<DeatilsWidget> {
  late DeatilsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeatilsModel());

    _model.amountSavedTextController ??= TextEditingController();
    _model.amountSavedFocusNode ??= FocusNode();
    _model.amountSavedFocusNode!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 380.0,
        height: 575.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color(0xFFBDBDBD)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  fillColor: const Color(0xFF267B5C),
                  icon: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('DEATILS_COMP_arrow_back_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_bottom_sheet');
                    Navigator.pop(context);
                  },
                ),
                Text(
                  valueOrDefault<String>(
                    widget.task?.projectName,
                    'Challenge',
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(const SizedBox(width: 100.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Add Savings',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 80.0,
                          child: TextFormField(
                            controller: _model.amountSavedTextController,
                            focusNode: _model.amountSavedFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.amountSavedTextController',
                              const Duration(milliseconds: 200),
                              () => safeSetState(() {}),
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: '0.00',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF267B5C),
                                  width: 3.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 3.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 3.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 3.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              hoverColor: const Color(0xFFC5C5C5),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Inter Tight',
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.amountSavedTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: const Color(0xFF267B5C),
                          icon: Icon(
                            Icons.add,
                            color: FlutterFlowTheme.of(context).info,
                            size: 18.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent('DEATILS_COMP_add_ICN_ON_TAP');
                            if (widget.task?.complete == true) {
                              return;
                            }

                            logFirebaseEvent('IconButton_backend_call');

                            await widget.task!.reference.update({
                              ...createTasksRecordData(
                                lastEdited: getCurrentTimestamp,
                              ),
                              ...mapToFirestore(
                                {
                                  'amount_saved': FieldValue.increment(
                                      double.parse(_model
                                          .amountSavedTextController.text)),
                                },
                              ),
                            });
                            if (widget.task!.amountSaved >=
                                functions.findNewIndex(
                                    widget.task?.index,
                                    widget.task!.amountSaved,
                                    widget.task?.savingsGoals.toList())!) {
                              logFirebaseEvent('IconButton_backend_call');

                              await widget.task!.reference.update({
                                ...mapToFirestore(
                                  {
                                    'index': FieldValue.increment(1),
                                  },
                                ),
                              });
                            } else {
                              return;
                            }

                            logFirebaseEvent('IconButton_bottom_sheet');
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(height: 5.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Amount Saved',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.task?.amountSaved.toString(),
                        '0.00',
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            lineHeight: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 20.0)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Next Goal',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Inter Tight',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          (widget.task?.savingsGoals
                              .elementAtOrNull(valueOrDefault<int>(
                            widget.task?.index,
                            0,
                          )))?.toString(),
                          'Goal Not Incremented',
                        ),
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(height: 20.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Next Goal Date',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Inter Tight',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          dateTimeFormat("MMMEd", widget.task?.nextGoalDate),
                          'Goal Not Incremented',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(height: 20.0)),
                  ),
                ].divide(const SizedBox(width: 50.0)),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Goal Savings',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.task?.goalSavings.toString(),
                        '0.00',
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 20.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Final Due Date',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        dateTimeFormat("MMMEd", widget.task?.dueDate),
                        'date',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 20.0)),
                ),
              ].divide(const SizedBox(width: 80.0)).addToStart(const SizedBox(width: 20.0)),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LinearPercentIndicator(
                      percent: valueOrDefault<double>(
                        functions.progressBarConverter(
                            valueOrDefault<double>(
                              widget.task?.amountSaved,
                              0.0,
                            ),
                            valueOrDefault<double>(
                              widget.task?.goalSavings,
                              0.0,
                            )),
                        0.0,
                      ),
                      width: 175.0,
                      lineHeight: 30.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: const Color(0xFF36AE8C),
                      backgroundColor: const Color(0xCCCBCBCB),
                      center: Text(
                        valueOrDefault<String>(
                          functions.progressBarPercent(
                              valueOrDefault<double>(
                                widget.task?.goalSavings,
                                0.0,
                              ),
                              valueOrDefault<double>(
                                widget.task?.amountSaved,
                                0.0,
                              )),
                          '0%',
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      barRadius: const Radius.circular(10.0),
                      padding: EdgeInsets.zero,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100.0,
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Description',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: AutoSizeText(
                                valueOrDefault<String>(
                                  widget.task?.description,
                                  'Description',
                                ),
                                textAlign: TextAlign.start,
                                maxLines: 3,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'DEATILS_COMP_EXTEND_GOAL_DATE_BTN_ON_TAP');
                    if (widget.task?.goalIncrement == 'Weekly') {
                      logFirebaseEvent('Button_backend_call');

                      await widget.task!.reference
                          .update(createTasksRecordData(
                        nextGoalDate:
                            functions.add1Week(widget.task?.nextGoalDate),
                      ));
                    } else {
                      if (widget.task?.goalIncrement == 'Daily') {
                        logFirebaseEvent('Button_backend_call');

                        await widget.task!.reference
                            .update(createTasksRecordData(
                          nextGoalDate:
                              functions.add1Day(widget.task?.nextGoalDate),
                        ));
                      } else {
                        if (widget.task?.goalIncrement == 'Bi-Weekly') {
                          logFirebaseEvent('Button_backend_call');

                          await widget.task!.reference
                              .update(createTasksRecordData(
                            nextGoalDate:
                                functions.add2Weeks(widget.task?.nextGoalDate),
                          ));
                        } else {
                          return;
                        }
                      }
                    }
                  },
                  text: 'Extend Goal Date',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 10.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF267B5C),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'DEATILS_EXTEND_DUE_DATE_BY_1_WEEK_BTN_ON');
                    logFirebaseEvent('Button_backend_call');

                    await widget.task!.reference.update(createTasksRecordData(
                      dueDate: functions.add1Week(widget.task?.dueDate),
                    ));
                  },
                  text: 'Extend Due Date by 1 Week',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF267B5C),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(const SizedBox(height: 10.0)),
            ),
          ].divide(const SizedBox(height: 5.0)),
        ),
      ),
    );
  }
}
