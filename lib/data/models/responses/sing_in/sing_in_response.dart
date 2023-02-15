import 'package:will_app/domain/entities/response/sign_in.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sing_in_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SignInResponse extends SignIn {
  SignInResponse({
    this.newStatus,
    this.newMessage,
    this.newInfo,
    this.newToken,
  }) : super(
          status: newStatus ?? '',
          message: newMessage ?? '',
          info: newInfo ?? InfoResponse(),
          token: newToken ?? '',
        );

  @JsonKey(name: 'status')
  final String? newStatus;

  @JsonKey(name: 'message')
  final String? newMessage;

  @JsonKey(name: 'info')
  final InfoResponse? newInfo;

  @JsonKey(name: 'token')
  final String? newToken;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignInResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InfoResponse extends Info {
  InfoResponse({
    this.newUsername,
    this.newRole,
  }) : super(
          username: newUsername ?? '',
          role: newRole ?? '',
        );

  @JsonKey(name: 'username')
  final String? newUsername;

  @JsonKey(name: 'role')
  final String? newRole;

  factory InfoResponse.fromJson(Map<String, dynamic> json) =>
      _$InfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InfoResponseToJson(this);
}
