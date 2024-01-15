class expectation_class implements Exception {
  final _message;
  final _prefix;

  expectation_class([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class NetworkTimeoutExpectation extends expectation_class {
  NetworkTimeoutExpectation([String? message]) : super(message, "Time Out");
}

class BadRequestExpectation extends expectation_class {
  BadRequestExpectation([String? message]) : super(message, "bad request");
}

class UnAuthorizationExpectation extends expectation_class {
  UnAuthorizationExpectation([String? message])
      : super(message, "UnAuthorization request");
}

class InvalidAuthorization extends expectation_class {
  InvalidAuthorization([String? message])
      : super(message, "InvalidInput request");
}
