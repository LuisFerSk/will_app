// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_find_made_per_day_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaintenanceFindMadePerDayResponse _$MaintenanceFindMadePerDayResponseFromJson(
        Map<String, dynamic> json) =>
    MaintenanceFindMadePerDayResponse(
      newStatus: json['status'] as String?,
      newMessage: json['message'] as String?,
      newInfo: (json['info'] as List<dynamic>?)
          ?.map((e) => InfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MaintenanceFindMadePerDayResponseToJson(
        MaintenanceFindMadePerDayResponse instance) =>
    <String, dynamic>{
      'status': instance.newStatus,
      'message': instance.newMessage,
      'info': instance.newInfo?.map((e) => e.toJson()).toList(),
    };

InfoResponse _$InfoResponseFromJson(Map<String, dynamic> json) => InfoResponse(
      newDate:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      newCount: json['count'] as int?,
    );

Map<String, dynamic> _$InfoResponseToJson(InfoResponse instance) =>
    <String, dynamic>{
      'date': instance.newDate?.toIso8601String(),
      'count': instance.newCount,
    };
