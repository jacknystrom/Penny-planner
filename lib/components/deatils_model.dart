import '/flutter_flow/flutter_flow_util.dart';
import 'deatils_widget.dart' show DeatilsWidget;
import 'package:flutter/material.dart';

class DeatilsModel extends FlutterFlowModel<DeatilsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for amountSaved widget.
  FocusNode? amountSavedFocusNode;
  TextEditingController? amountSavedTextController;
  String? Function(BuildContext, String?)? amountSavedTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountSavedFocusNode?.dispose();
    amountSavedTextController?.dispose();
  }
}
