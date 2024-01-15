import 'package:flutterfirebase/data/response/status.dart';
class ResponseClass<T> {
  String? message;
  Status? status;
  T? data;

  ResponseClass(this.message, this.status, this.data);

  ResponseClass.loading() : status = Status.LOADING;

  ResponseClass.complete() : status = Status.COMPLETE;

  ResponseClass.error() : status = Status.ERROR;

  @override
  String toString() {
    return "status: $status \n message: $message \n Data: $data";
  }
}
