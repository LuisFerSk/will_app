// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sing_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) =>
    SignInResponse(
      newStatus: json['status'] as String?,
      newMessage: json['message'] as String?,
      newInfo: json['info'] == null
          ? null
          : InfoResponse.fromJson(json['info'] as Map<String, dynamic>),
      newToken: json['token'] as String?,
    );

Map<String, dynamic> _$SignInResponseToJson(SignInResponse instance) =>
    <String, dynamic>{
      'status': instance.newStatus,
      'message': instance.newMessage,
      'info': instance.newInfo?.toJson(),
      'token': instance.newToken,
    };

InfoResponse _$InfoResponseFromJson(Map<String, dynamic> json) => InfoResponse(
      newUsername: json['username'] as String?,
      newRole: json['role'] as String?,
    );

Map<String, dynamic> _$InfoResponseToJson(InfoResponse instance) =>
    <String, dynamic>{
      'username': instance.newUsername,
      'role': instance.newRole,
    };
