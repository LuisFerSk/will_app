// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_scanner_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrinterScannerCreateRequest _$PrinterScannerCreateRequestFromJson(
        Map<String, dynamic> json) =>
    PrinterScannerCreateRequest(
      newType: json['type'] as String,
      newCampus: json['campus'] as String,
      newBrand: json['brand'] as String,
      newModel: json['model'] as String,
      newSerial: json['serial'] as String,
      newLicensePlate: json['license_plate'] as String?,
      newArea: json['area'] as String,
      newUser: json['user'] as String,
      newCc: json['cc'] as String,
      newPhone: json['phone'] as String?,
    );

Map<String, dynamic> _$PrinterScannerCreateRequestToJson(
        PrinterScannerCreateRequest instance) =>
    <String, dynamic>{
      'type': instance.newType,
      'campus': instance.newCampus,
      'brand': instance.newBrand,
      'model': instance.newModel,
      'serial': instance.newSerial,
      'license_plate': instance.newLicensePlate,
      'area': instance.newArea,
      'user': instance.newUser,
      'cc': instance.newCc,
      'phone': instance.newPhone,
    };
