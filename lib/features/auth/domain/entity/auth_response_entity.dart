import 'package:equatable/equatable.dart';

class AuthResponseEntity extends Equatable {
  const AuthResponseEntity({
    required this.refresh,
    required this.access,
  });

  final String refresh;
  final String access;

  @override
  List<Object?> get props => [
        refresh,
        access,
      ];
}
