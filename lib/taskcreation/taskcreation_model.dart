import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'taskcreation_widget.dart' show TaskcreationWidget;
import 'package:flutter/material.dart';

class TaskcreationModel extends FlutterFlowModel<TaskcreationWidget> {
  ///  Local state fields for this page.

  DateTime? date;

  ///  State fields for stateful widgets in this page.

  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for savingsgoal widget.
  FocusNode? savingsgoalFocusNode;
  TextEditingController? savingsgoalTextController;
  String? Function(BuildContext, String?)? savingsgoalTextControllerValidator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    savingsgoalFocusNode?.dispose();
    savingsgoalTextController?.dispose();
  }
}
