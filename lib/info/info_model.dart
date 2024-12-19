import '/flutter_flow/flutter_flow_util.dart';
import 'info_widget.dart' show InfoWidget;
import 'package:flutter/material.dart';

class InfoModel extends FlutterFlowModel<InfoWidget> {
  ///  Local state fields for this page.

  int days = 7;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
