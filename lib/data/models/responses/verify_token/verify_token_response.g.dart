// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyTokenResponse _$VerifyTokenResponseFromJson(Map<String, dynamic> json) =>
    VerifyTokenResponse(
      newStatus: json['status'] as String?,
      newMessage: json['message'] as String?,
      newInfo: json['info'] == null
          ? null
          : InfoResponse.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyTokenResponseToJson(
        VerifyTokenResponse instance) =>
    <String, dynamic>{
      'status': instance.newStatus,
      'message': instance.newMessage,
      'info': instance.newInfo?.toJson(),
    };

InfoResponse _$InfoResponseFromJson(Map<String, dynamic> json) => InfoResponse(
      newId: json['id'] as int?,
      newUsername: json['username'] as String?,
      newRole: json['role'] as String?,
      newIat: json['iat'] as int?,
      newExp: json['exp'] as int?,
    );

Map<String, dynamic> _$InfoResponseToJson(InfoResponse instance) =>
    <String, dynamic>{
      'id': instance.newId,
      'username': instance.newUsername,
      'role': instance.newRole,
      'iat': instance.newIat,
      'exp': instance.newExp,
    };
