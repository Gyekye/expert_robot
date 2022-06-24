/// Generic failure handler
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  /// [Failure] message
  final String message;

  /// [Failure] constructor
  const Failure(this.message);

  /// converts [Failure.message] to Utf8
  @override
  String toString() => _utf8convert(message);

  static String _utf8convert(String text) {
    final bytes = text.codeUnits;
    return utf8.decode(bytes);
  }

  @override
  List<Object?> get props => [message];
}