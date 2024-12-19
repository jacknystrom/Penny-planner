import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in infoButton widget.
  UsersRecord? user;
  // Stores action output result for [Backend Call - API (getTransactions)] action in infoButton widget.
  ApiCallResponse? newTransactions;
  // Stores action output result for [Firestore Query - Query a collection] action in infoButton widget.
  TransactionsRecord? transactions;
  // Stores action output result for [Backend Call - API (getRecurringTransactions)] action in infoButton widget.
  ApiCallResponse? rTransactions;
  // Stores action output result for [Firestore Query - Query a collection] action in infoButton widget.
  RecurringTransactionsRecord? recurring;
  // Stores action output result for [Backend Call - Read Document] action in infoButton widget.
  TransactionsRecord? finalT;
  // Stores action output result for [Backend Call - Read Document] action in infoButton widget.
  RecurringTransactionsRecord? finalR;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
