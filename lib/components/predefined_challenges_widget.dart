import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'predefined_challenges_model.dart';
export 'predefined_challenges_model.dart';

class PredefinedChallengesWidget extends StatefulWidget {
  const PredefinedChallengesWidget({super.key});

  @override
  State<PredefinedChallengesWidget> createState() =>
      _PredefinedChallengesWidgetState();
}

class _PredefinedChallengesWidgetState
    extends State<PredefinedChallengesWidget> {
  late PredefinedChallengesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PredefinedChallengesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 500.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: const Color(0xB7267B5C),
                    icon: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'PREDEFINED_CHALLENGES_arrow_back_ICN_ON_');
                      logFirebaseEvent('IconButton_navigate_to');

                      context.goNamed('home');
                    },
                  ),
                  Text(
                    'Click the challenge you wish to start',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ]
                    .divide(const SizedBox(width: 30.0))
                    .addToStart(const SizedBox(width: 10.0)),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          4.0,
                        ),
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [Color(0xFFE2E2E2), Color(0xB3509282)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'PREDEFINED_CHALLENGES_Column_6n42t6js_ON');
                        logFirebaseEvent('Column_backend_call');

                        await TasksRecord.collection.doc().set({
                          ...createTasksRecordData(
                            projectName: '52 Week Challenge',
                            owner: currentUserReference,
                            description:
                                'Start with \$1 in week one, \$2 in week two, and so on, up to \$52 by the final week. By the end of the year, you’ll have saved \$1,378.',
                            lastEdited: getCurrentTimestamp,
                            timeCreated: getCurrentTimestamp,
                            dueDate: functions.add52Weeks(getCurrentTimestamp),
                            amountSaved: 0.0,
                            goalSavings: 1378.0,
                            complete: false,
                            nextGoalDate:
                                functions.add1Week(getCurrentTimestamp),
                            goalIncrement: 'Weekly',
                            index: 0,
                          ),
                          ...mapToFirestore(
                            {
                              'savings_goals': [
                                1,
                                2,
                                3,
                                4,
                                5,
                                6,
                                7,
                                8,
                                9,
                                10,
                                11,
                                12,
                                13,
                                14,
                                15,
                                16,
                                17,
                                18,
                                19,
                                20,
                                21,
                                22,
                                23,
                                24,
                                25,
                                26,
                                27,
                                28,
                                29,
                                30,
                                31,
                                32,
                                33,
                                34,
                                35,
                                36,
                                37,
                                38,
                                39,
                                40,
                                41,
                                42,
                                43,
                                44,
                                45,
                                46,
                                47,
                                48,
                                49,
                                50,
                                51,
                                52
                              ],
                            },
                          ),
                        });
                        logFirebaseEvent('Column_bottom_sheet');
                        Navigator.pop(context);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '52-Week Savings Challenge',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                              fontFamily: 'Inter Tight',
                              color: const Color(0xFF14181B),
                              letterSpacing: 0.0,
                              shadows: [
                                const Shadow(
                                  color: Color(0xFFC8C4C4),
                                  offset: Offset(0.0, 1.5),
                                  blurRadius: 0.0,
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Goal: Save a set amount each week, increasing gradually.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            ' Start with \$1 in week one, \$2 in week two, and so on, up to \$52 by the final week. By the end of the year, you’ll have saved \$1,378.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          4.0,
                        ),
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [Color(0xFFE2E2E2), Color(0xB3509282)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'PREDEFINED_CHALLENGES_Column_egeomtsf_ON');
                        logFirebaseEvent('Column_backend_call');

                        await TasksRecord.collection.doc().set({
                          ...createTasksRecordData(
                            projectName: '365 Day Challenge',
                            owner: currentUserReference,
                            description:
                                'Start by saving \$0.01 on day one, \$0.02 on day two, and so on. By day 365, you’ll have saved \$667.95.',
                            lastEdited: getCurrentTimestamp,
                            timeCreated: getCurrentTimestamp,
                            dueDate: functions.add1Year(getCurrentTimestamp),
                            amountSaved: 0.0,
                            goalSavings: 667.95,
                            complete: false,
                            goalIncrement: 'Daily',
                            nextGoalDate:
                                functions.add1Day(getCurrentTimestamp),
                            index: 0,
                          ),
                          ...mapToFirestore(
                            {
                              'savings_goals': [
                                0.01,
                                0.02,
                                0.03,
                                0.04,
                                0.05,
                                0.06,
                                0.07,
                                0.08,
                                0.09,
                                0.1,
                                0.11,
                                0.12,
                                0.13,
                                0.14,
                                0.15,
                                0.16,
                                0.17,
                                0.18,
                                0.19,
                                0.2,
                                0.21,
                                0.22,
                                0.23,
                                0.24,
                                0.25,
                                0.26,
                                0.27,
                                0.28,
                                0.29,
                                0.3,
                                0.31,
                                0.32,
                                0.33,
                                0.34,
                                0.35,
                                0.36,
                                0.37,
                                0.38,
                                0.39,
                                0.4,
                                0.41,
                                0.42,
                                0.43,
                                0.44,
                                0.45,
                                0.46,
                                0.47,
                                0.48,
                                0.49,
                                0.5,
                                0.51,
                                0.52,
                                0.53,
                                0.54,
                                0.55,
                                0.56,
                                0.57,
                                0.58,
                                0.59,
                                0.6,
                                0.61,
                                0.62,
                                0.63,
                                0.64,
                                0.65,
                                0.66,
                                0.67,
                                0.68,
                                0.69,
                                0.7,
                                0.71,
                                0.72,
                                0.73,
                                0.74,
                                0.75,
                                0.76,
                                0.77,
                                0.78,
                                0.79,
                                0.8,
                                0.81,
                                0.82,
                                0.83,
                                0.839999,
                                0.849999,
                                0.859999,
                                0.869999,
                                0.879999,
                                0.889999,
                                0.899999,
                                0.909999,
                                0.919999,
                                0.929999,
                                0.939999,
                                0.949999,
                                0.959999,
                                0.969999,
                                0.979999,
                                0.989999,
                                0.999999,
                                1.01,
                                1.02,
                                1.03,
                                1.04,
                                1.05,
                                1.06,
                                1.07,
                                1.08,
                                1.09,
                                1.1,
                                1.11,
                                1.12,
                                1.13,
                                1.14,
                                1.15,
                                1.16,
                                1.17,
                                1.18,
                                1.19,
                                1.2,
                                1.21,
                                1.22,
                                1.23,
                                1.24,
                                1.25,
                                1.26,
                                1.27,
                                1.28,
                                1.29,
                                1.3,
                                1.31,
                                1.32,
                                1.33,
                                1.34,
                                1.35,
                                1.36,
                                1.37,
                                1.38,
                                1.39,
                                1.4,
                                1.41,
                                1.42,
                                1.43,
                                1.44,
                                1.45,
                                1.46,
                                1.47,
                                1.48,
                                1.49,
                                1.5,
                                1.51,
                                1.52,
                                1.53,
                                1.54,
                                1.55,
                                1.56,
                                1.57,
                                1.58,
                                1.59,
                                1.6,
                                1.61,
                                1.62,
                                1.63,
                                1.64,
                                1.65,
                                1.66,
                                1.67,
                                1.68,
                                1.69,
                                1.7,
                                1.71,
                                1.72,
                                1.73,
                                1.74,
                                1.75,
                                1.76,
                                1.77,
                                1.78,
                                1.79,
                                1.8,
                                1.81,
                                1.82,
                                1.83,
                                1.84,
                                1.85,
                                1.86,
                                1.87,
                                1.88,
                                1.89,
                                1.9,
                                1.91,
                                1.92,
                                1.93,
                                1.94,
                                1.95,
                                1.96,
                                1.97,
                                1.98,
                                1.99,
                                2,
                                2.01,
                                2.02,
                                2.03,
                                2.04,
                                2.05,
                                2.06,
                                2.07,
                                2.08,
                                2.09,
                                2.1,
                                2.11,
                                2.12,
                                2.13,
                                2.14,
                                2.15,
                                2.16,
                                2.17,
                                2.18,
                                2.19,
                                2.2,
                                2.21,
                                2.22,
                                2.23,
                                2.24,
                                2.25,
                                2.26,
                                2.27,
                                2.28,
                                2.29,
                                2.3,
                                2.31,
                                2.32,
                                2.33,
                                2.34,
                                2.35,
                                2.36,
                                2.37,
                                2.38,
                                2.39,
                                2.4,
                                2.41,
                                2.42,
                                2.43,
                                2.44,
                                2.45,
                                2.46,
                                2.47,
                                2.48,
                                2.49,
                                2.5,
                                2.51,
                                2.52,
                                2.53,
                                2.54,
                                2.55,
                                2.56,
                                2.57,
                                2.58,
                                2.59,
                                2.6,
                                2.61,
                                2.62,
                                2.63,
                                2.64,
                                2.65,
                                2.66,
                                2.67,
                                2.68,
                                2.69,
                                2.7,
                                2.71,
                                2.72,
                                2.73,
                                2.74,
                                2.75,
                                2.76,
                                2.77,
                                2.78,
                                2.79,
                                2.8,
                                2.81,
                                2.82,
                                2.83,
                                2.84,
                                2.85,
                                2.86,
                                2.87,
                                2.88,
                                2.89,
                                2.9,
                                2.91,
                                2.92,
                                2.93,
                                2.94,
                                2.95,
                                2.96,
                                2.97,
                                2.98,
                                2.99,
                                3,
                                3.01,
                                3.02,
                                3.03,
                                3.04,
                                3.05,
                                3.06,
                                3.07,
                                3.08,
                                3.09,
                                3.1,
                                3.11,
                                3.12,
                                3.13,
                                3.14,
                                3.15,
                                3.16,
                                3.17,
                                3.18,
                                3.19,
                                3.2,
                                3.21,
                                3.22,
                                3.23,
                                3.24,
                                3.25,
                                3.26,
                                3.27,
                                3.28,
                                3.29,
                                3.3,
                                3.31,
                                3.32,
                                3.33,
                                3.34,
                                3.35,
                                3.36,
                                3.37,
                                3.38,
                                3.39,
                                3.4,
                                3.41,
                                3.42,
                                3.43,
                                3.44,
                                3.45,
                                3.46,
                                3.47,
                                3.48,
                                3.49,
                                3.5,
                                3.51,
                                3.52,
                                3.53,
                                3.54,
                                3.55,
                                3.56,
                                3.57,
                                3.58,
                                3.59,
                                3.6,
                                3.61,
                                3.62,
                                3.63,
                                3.64,
                                3.65
                              ],
                            },
                          ),
                        });
                        logFirebaseEvent('Column_bottom_sheet');
                        Navigator.pop(context);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '365-Day Penny Challenge',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Goal: Goal: Save by increasing a small amount every day.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'How it Works: Start by saving \$0.01 on day one, \$0.02 on day two, and so on. By day 365, you’ll have saved \$667.95.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          4.0,
                        ),
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [Color(0xFFE2E2E2), Color(0xB3509282)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'PREDEFINED_CHALLENGES_Column_7a921b8o_ON');
                        logFirebaseEvent('Column_backend_call');

                        await TasksRecord.collection.doc().set({
                          ...createTasksRecordData(
                            projectName: '100 Week Challenge',
                            owner: currentUserReference,
                            description:
                                ' Save a randomly chosen amount each week that can range from \$1 to \$100 with no repeats, you\'ll have saved 5,050.',
                            lastEdited: getCurrentTimestamp,
                            timeCreated: getCurrentTimestamp,
                            dueDate: functions.add100Weeks(getCurrentTimestamp),
                            amountSaved: 0.0,
                            goalSavings: 5050.0,
                            complete: false,
                            nextGoalDate:
                                functions.add1Week(getCurrentTimestamp),
                            goalIncrement: 'Weekly',
                            index: 0,
                            pointsadded: false,
                          ),
                          ...mapToFirestore(
                            {
                              'savings_goals': [
                                1,
                                2,
                                3,
                                4,
                                5,
                                6,
                                7,
                                8,
                                9,
                                10,
                                11,
                                12,
                                13,
                                14,
                                15,
                                16,
                                17,
                                18,
                                19,
                                20,
                                21,
                                22,
                                23,
                                24,
                                25,
                                26,
                                27,
                                28,
                                29,
                                30,
                                31,
                                32,
                                33,
                                34,
                                35,
                                36,
                                37,
                                38,
                                39,
                                40,
                                41,
                                42,
                                43,
                                44,
                                45,
                                46,
                                47,
                                48,
                                49,
                                50,
                                51,
                                52,
                                53,
                                54,
                                55,
                                56,
                                57,
                                58,
                                59,
                                60,
                                61,
                                62,
                                63,
                                64,
                                65,
                                66,
                                67,
                                68,
                                69,
                                70,
                                71,
                                72,
                                73,
                                74,
                                75,
                                76,
                                77,
                                78,
                                79,
                                80,
                                81,
                                82,
                                83,
                                84,
                                85,
                                86,
                                87,
                                88,
                                89,
                                90,
                                91,
                                92,
                                93,
                                94,
                                95,
                                96,
                                97,
                                98,
                                99,
                                100
                              ],
                            },
                          ),
                        });
                        logFirebaseEvent('Column_bottom_sheet');
                        Navigator.pop(context);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '100-Week Savings Challenge',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Goal: Save a randomly generated amount weekly.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'How it Works: Save a randomly chosen amount each week that can range from \$1 to \$100 with no repeats, you\'ll have saved 5,050.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          4.0,
                        ),
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [Color(0xFFE2E2E2), Color(0xB3509282)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'PREDEFINED_CHALLENGES_Column_3iiiqevb_ON');
                        logFirebaseEvent('Column_backend_call');

                        await TasksRecord.collection.doc().set({
                          ...createTasksRecordData(
                            projectName: '200 Weekly Challenge',
                            owner: currentUserReference,
                            description:
                                ' Save a randomly chosen amount every other week that can range from \$1 to \$100 with no repeats, you\'ll have saved 5,050.',
                            lastEdited: getCurrentTimestamp,
                            timeCreated: getCurrentTimestamp,
                            dueDate: functions.add200Weeks(getCurrentTimestamp),
                            amountSaved: 0.0,
                            goalSavings: 5050.0,
                            complete: false,
                            goalIncrement: 'Bi-Weekly',
                            nextGoalDate:
                                functions.add2Weeks(getCurrentTimestamp),
                            index: 0,
                          ),
                          ...mapToFirestore(
                            {
                              'savings_goals': [
                                1,
                                2,
                                3,
                                4,
                                5,
                                6,
                                7,
                                8,
                                9,
                                10,
                                11,
                                12,
                                13,
                                14,
                                15,
                                16,
                                17,
                                18,
                                19,
                                20,
                                21,
                                22,
                                23,
                                24,
                                25,
                                26,
                                27,
                                28,
                                29,
                                30,
                                31,
                                32,
                                33,
                                34,
                                35,
                                36,
                                37,
                                38,
                                39,
                                40,
                                41,
                                42,
                                43,
                                44,
                                45,
                                46,
                                47,
                                48,
                                49,
                                50,
                                51,
                                52,
                                53,
                                54,
                                55,
                                56,
                                57,
                                58,
                                59,
                                60,
                                61,
                                62,
                                63,
                                64,
                                65,
                                66,
                                67,
                                68,
                                69,
                                70,
                                71,
                                72,
                                73,
                                74,
                                75,
                                76,
                                77,
                                78,
                                79,
                                80,
                                81,
                                82,
                                83,
                                84,
                                85,
                                86,
                                87,
                                88,
                                89,
                                90,
                                91,
                                92,
                                93,
                                94,
                                95,
                                96,
                                97,
                                98,
                                99,
                                100
                              ],
                            },
                          ),
                        });
                        logFirebaseEvent('Column_bottom_sheet');
                        Navigator.pop(context);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '100-Bi-Week Savings Challenge',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Goal: Save a randomly generated amount bi-weekly.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'How it Works: Save a randomly chosen amount every other week that can range from \$1 to \$100 with no repeats, you\'ll have saved 5,050.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
