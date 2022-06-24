/// [Exception] thrown for server related error and device error

class DeviceException implements Exception {
  /// Constructor
  const DeviceException(this.message, {this.statusCode = 404});

  // Error message
  final String message;

  /// Error code from server
  final int statusCode;

  /// Convert error messages from api
  factory DeviceException.fromJson(Map<String, dynamic> json,
      {int code = 404}) =>
      DeviceException(json['message'] as String, statusCode: code);
}