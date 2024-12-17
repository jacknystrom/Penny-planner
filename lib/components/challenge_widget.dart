import '/backend/backend.dart';
import '/components/deatils_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'challenge_model.dart';
export 'challenge_model.dart';

class ChallengeWidget extends StatefulWidget {
  const ChallengeWidget({
    super.key,
    required this.document,
    required this.completed,
    this.pointsAdded,
  });

  final TasksRecord? document;
  final Future Function()? completed;
  final bool? pointsAdded;

  @override
  State<ChallengeWidget> createState() => _ChallengeWidgetState();
}

class _ChallengeWidgetState extends State<ChallengeWidget> {
  late ChallengeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChallengeModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CHALLENGE_COMP_Challenge_ON_INIT_STATE');
      if ((widget.document!.dueDate! <= getCurrentTimestamp) ||
          (widget.document!.goalSavings <= widget.document!.amountSaved)) {
        logFirebaseEvent('Challenge_execute_callback');
        await widget.completed?.call();
        if (!widget.document!.pointsadded) {
          logFirebaseEvent('Challenge_backend_call');

          await widget.document!.reference.update(createTasksRecordData(
            pointsadded: true,
          ));
        }
      } else {
        return;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.transparent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Container(
          width: 340.0,
          height: 175.0,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            gradient: const LinearGradient(
              colors: [Colors.white, Color(0xFF97C4B8)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: const Color(0xC4267B5C),
                      icon: Icon(
                        Icons.edit,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('CHALLENGE_COMP_edit_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_bottom_sheet');
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          isDismissible: false,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: DeatilsWidget(
                                task: widget.document!,
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.document?.projectName,
                        'Challenge',
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Inter Tight',
                            letterSpacing: 0.0,
                          ),
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: const Color(0xC4267B5C),
                      icon: Icon(
                        Icons.clear,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('CHALLENGE_COMP_clear_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_backend_call');
                        await widget.document!.reference.delete();
                      },
                    ),
                  ]
                      .divide(const SizedBox(width: 20.0))
                      .addToStart(const SizedBox(width: 25.0))
                      .addToEnd(const SizedBox(width: 25.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Amount Saved',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.document?.amountSaved.toString(),
                            '0.0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                lineHeight: 0.0,
                              ),
                        ),
                      ]
                          .divide(const SizedBox(height: 10.0))
                          .addToStart(const SizedBox(height: 5.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Goal Savings',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          widget.document!.goalSavings.toString(),
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ]
                          .divide(const SizedBox(height: 10.0))
                          .addToStart(const SizedBox(height: 5.0)),
                    ),
                  ]
                      .divide(const SizedBox(width: 45.0))
                      .addToStart(const SizedBox(width: 5.0))
                      .addToEnd(const SizedBox(width: 5.0)),
                ),
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LinearPercentIndicator(
                        percent: valueOrDefault<double>(
                          functions.progressBarConverter(
                              widget.document!.amountSaved,
                              widget.document!.goalSavings),
                          0.0,
                        ),
                        width: 170.0,
                        lineHeight: 40.0,
                        animation: true,
                        animateFromLastPercent: true,
                        progressColor: const Color(0xFF267B5C),
                        backgroundColor: FlutterFlowTheme.of(context).accent4,
                        center: Text(
                          functions.progressBarPercent(
                              widget.document!.goalSavings,
                              widget.document!.amountSaved),
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 0.0,
                              ),
                        ),
                        barRadius: const Radius.circular(20.0),
                        padding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                ),
              ].divide(const SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
