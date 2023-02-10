import 'package:will_app/domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_request.g.dart';

@JsonSerializable(explicitToJson: true)
class UserRequest extends User {
  UserRequest({required this.newUsername, required this.newPassword})
      : super(username: newUsername, password: newPassword);

  @JsonKey(name: 'username')
  final String newUsername;

  @JsonKey(name: 'password')
  final String newPassword;

  factory UserRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserRequestToJson(this);
}
