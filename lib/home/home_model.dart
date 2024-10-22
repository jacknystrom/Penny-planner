import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AmountSaved widget.
  FocusNode? amountSavedFocusNode1;
  TextEditingController? amountSavedTextController1;
  String? Function(BuildContext, String?)? amountSavedTextController1Validator;
  // State field(s) for AmountSaved widget.
  FocusNode? amountSavedFocusNode2;
  TextEditingController? amountSavedTextController2;
  String? Function(BuildContext, String?)? amountSavedTextController2Validator;
  // State field(s) for AmountSaved widget.
  FocusNode? amountSavedFocusNode3;
  TextEditingController? amountSavedTextController3;
  String? Function(BuildContext, String?)? amountSavedTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountSavedFocusNode1?.dispose();
    amountSavedTextController1?.dispose();

    amountSavedFocusNode2?.dispose();
    amountSavedTextController2?.dispose();

    amountSavedFocusNode3?.dispose();
    amountSavedTextController3?.dispose();
  }
}
