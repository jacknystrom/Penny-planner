import '/flutter_flow/flutter_flow_util.dart';
import 'net_promoter_score_component_widget.dart'
    show NetPromoterScoreComponentWidget;
import 'package:flutter/material.dart';

class NetPromoterScoreComponentModel
    extends FlutterFlowModel<NetPromoterScoreComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for NPS_SCORE_SLIDER widget.
  double? npsScoreSliderValue;
  // State field(s) for Feedback_NPS_TEXT_FIELD widget.
  FocusNode? feedbackNPSTEXTFIELDFocusNode;
  TextEditingController? feedbackNPSTEXTFIELDTextController;
  String? Function(BuildContext, String?)?
      feedbackNPSTEXTFIELDTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    feedbackNPSTEXTFIELDFocusNode?.dispose();
    feedbackNPSTEXTFIELDTextController?.dispose();
  }
}
