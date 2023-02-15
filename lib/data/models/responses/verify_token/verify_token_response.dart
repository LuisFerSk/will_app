import 'package:will_app/domain/entities/response/verify_token.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_token_response.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyTokenResponse extends VerifyToken {
  VerifyTokenResponse({
    this.newStatus,
    this.newMessage,
    this.newInfo,
  }) : super(
          status: newStatus ?? '',
          message: newMessage ?? '',
          info: newInfo ?? InfoResponse(),
        );

  @JsonKey(name: 'status')
  final String? newStatus;

  @JsonKey(name: 'message')
  final String? newMessage;

  @JsonKey(name: 'info')
  final InfoResponse? newInfo;

  factory VerifyTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyTokenResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InfoResponse extends Info {
  InfoResponse({
    this.newId,
    this.newUsername,
    this.newRole,
    this.newIat,
    this.newExp,
  }) : super(
          id: newId ?? -1,
          username: newUsername ?? '',
          role: newRole ?? '',
          iat: newIat ?? -1,
          exp: newExp ?? -1,
        );

  @JsonKey(name: 'id')
  final int? newId;

  @JsonKey(name: 'username')
  final String? newUsername;

  @JsonKey(name: 'role')
  final String? newRole;

  @JsonKey(name: 'iat')
  final int? newIat;

  @JsonKey(name: 'exp')
  final int? newExp;

  factory InfoResponse.fromJson(Map<String, dynamic> json) =>
      _$InfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InfoResponseToJson(this);
}
