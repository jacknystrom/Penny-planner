class SendDueDateNotificationCloudFunctionCallResponse {
  SendDueDateNotificationCloudFunctionCallResponse({
    this.errorCode,
    this.succeeded,
    this.jsonBody,
  });
  String? errorCode;
  bool? succeeded;
  dynamic jsonBody;
}
