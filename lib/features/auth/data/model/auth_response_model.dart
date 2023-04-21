import 'package:coffee_shop_mobile/features/auth/domain/entity/auth_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel extends AuthResponseEntity {
  const AuthResponseModel({required super.refresh, required super.access});

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}
