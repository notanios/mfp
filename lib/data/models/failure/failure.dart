abstract class Failure {}

class ServerFailure extends Failure {
  final dynamic errorObject;

  ServerFailure({required this.errorObject});
}

