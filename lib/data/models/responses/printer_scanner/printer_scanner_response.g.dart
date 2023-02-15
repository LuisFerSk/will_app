// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_scanner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrinterScannerResponse _$PrinterScannerResponseFromJson(
        Map<String, dynamic> json) =>
    PrinterScannerResponse(
      newStatus: json['status'] as String,
      newMessage: json['message'] as String,
      newInfo: InfoResponse.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PrinterScannerResponseToJson(
        PrinterScannerResponse instance) =>
    <String, dynamic>{
      'status': instance.newStatus,
      'message': instance.newMessage,
      'info': instance.newInfo.toJson(),
    };

InfoResponse _$InfoResponseFromJson(Map<String, dynamic> json) => InfoResponse(
      newId: json['id'] as int,
      newType: json['type'] as String,
      newModel: json['model'] as String,
      newSerial: json['serial'] as String,
      newLicensePlate: json['license_plate'] as String?,
      newCampus: json['campus'] as String,
      newArea: json['area'] as String,
      newUser: json['user'] as String,
      newCc: json['cc'] as String,
      newPhone: json['phone'] as String?,
      newCreatedAt: DateTime.parse(json['created_at'] as String),
      newUpdatedAt: DateTime.parse(json['update_at'] as String),
      newDeletedAt: json['delete_at'] == null
          ? null
          : DateTime.parse(json['delete_at'] as String),
      newBrandId: json['brand_id'] as int,
      newBrand: BrandResponse.fromJson(json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InfoResponseToJson(InfoResponse instance) =>
    <String, dynamic>{
      'id': instance.newId,
      'type': instance.newType,
      'model': instance.newModel,
      'serial': instance.newSerial,
      'license_plate': instance.newLicensePlate,
      'campus': instance.newCampus,
      'area': instance.newArea,
      'user': instance.newUser,
      'cc': instance.newCc,
      'phone': instance.newPhone,
      'created_at': instance.newCreatedAt.toIso8601String(),
      'update_at': instance.newUpdatedAt.toIso8601String(),
      'delete_at': instance.newDeletedAt?.toIso8601String(),
      'brand_id': instance.newBrandId,
      'brand': instance.newBrand.toJson(),
    };

BrandResponse _$BrandResponseFromJson(Map<String, dynamic> json) =>
    BrandResponse(
      newId: json['id'] as int,
      newName: json['name'] as String,
      newType: json['type'] as String,
      newCreatedAt: DateTime.parse(json['created_at'] as String),
      newUpdatedAt: DateTime.parse(json['updated_at'] as String),
      newDeletedAt: json['delete_at'] == null
          ? null
          : DateTime.parse(json['delete_at'] as String),
    );

Map<String, dynamic> _$BrandResponseToJson(BrandResponse instance) =>
    <String, dynamic>{
      'id': instance.newId,
      'name': instance.newName,
      'type': instance.newType,
      'created_at': instance.newCreatedAt.toIso8601String(),
      'updated_at': instance.newUpdatedAt.toIso8601String(),
      'delete_at': instance.newDeletedAt?.toIso8601String(),
    };
