class ErrorResponse {
  late String statusMessage;
  late String? userMessage;
  late int? statusCode;
  late String? stackTrace;

  ErrorResponse({
    this.stackTrace,
    this.statusCode,
    this.statusMessage = "Something went wrong",
    this.userMessage,
  });
}