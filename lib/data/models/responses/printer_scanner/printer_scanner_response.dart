import 'package:json_annotation/json_annotation.dart';
import 'package:will_app/domain/entities/response/printer_scanner.dart';

part 'printer_scanner_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PrinterScannerResponse extends PrinterScanner {
  PrinterScannerResponse({
    required this.newStatus,
    required this.newMessage,
    required this.newInfo,
  }) : super(
          status: newStatus,
          message: newMessage,
          info: newInfo,
        );

  @JsonKey(name: 'status')
  final String newStatus;

  @JsonKey(name: 'message')
  final String newMessage;

  @JsonKey(name: 'info')
  final InfoResponse newInfo;

  factory PrinterScannerResponse.fromJson(Map<String, dynamic> json) =>
      _$PrinterScannerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PrinterScannerResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InfoResponse extends Info {
  InfoResponse({
    required this.newId,
    required this.newType,
    required this.newModel,
    required this.newSerial,
    this.newLicensePlate,
    required this.newCampus,
    required this.newArea,
    required this.newUser,
    required this.newCc,
    this.newPhone,
    required this.newCreatedAt,
    required this.newUpdatedAt,
    this.newDeletedAt,
    required this.newBrandId,
    required this.newBrand,
  }) : super(
          id: newId,
          type: newType,
          model: newModel,
          serial: newSerial,
          licensePlate: newLicensePlate ?? '',
          campus: newCampus,
          area: newArea,
          user: newUser,
          cc: newCc,
          phone: newPhone ?? '',
          createdAt: newCreatedAt,
          updatedAt: newUpdatedAt,
          deletedAt: newDeletedAt ?? DateTime(0),
          brandId: newBrandId,
          brand: newBrand,
        );

  @JsonKey(name: 'id')
  final int newId;

  @JsonKey(name: 'type')
  final String newType;

  @JsonKey(name: 'model')
  final String newModel;

  @JsonKey(name: 'serial')
  final String newSerial;

  @JsonKey(name: 'license_plate')
  final String? newLicensePlate;

  @JsonKey(name: 'campus')
  final String newCampus;

  @JsonKey(name: 'area')
  final String newArea;

  @JsonKey(name: 'user')
  final String newUser;

  @JsonKey(name: 'cc')
  final String newCc;

  @JsonKey(name: 'phone')
  final String? newPhone;

  @JsonKey(name: 'created_at')
  final DateTime newCreatedAt;

  @JsonKey(name: 'update_at')
  final DateTime newUpdatedAt;

  @JsonKey(name: 'delete_at')
  final DateTime? newDeletedAt;

  @JsonKey(name: 'brand_id')
  final int newBrandId;

  @JsonKey(name: 'brand')
  final BrandResponse newBrand;

  factory InfoResponse.fromJson(Map<String, dynamic> json) =>
      _$InfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InfoResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BrandResponse extends Brand {
  BrandResponse({
    required this.newId,
    required this.newName,
    required this.newType,
    required this.newCreatedAt,
    required this.newUpdatedAt,
    this.newDeletedAt,
  }) : super(
          id: newId,
          name: newName,
          type: newType,
          createdAt: newCreatedAt,
          updatedAt: newUpdatedAt,
          deletedAt: newDeletedAt ?? DateTime(0),
        );

  @JsonKey(name: 'id')
  final int newId;

  @JsonKey(name: 'name')
  final String newName;

  @JsonKey(name: 'type')
  final String newType;

  @JsonKey(name: 'created_at')
  final DateTime newCreatedAt;

  @JsonKey(name: 'updated_at')
  final DateTime newUpdatedAt;

  @JsonKey(name: 'delete_at')
  final DateTime? newDeletedAt;

  factory BrandResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BrandResponseToJson(this);
}
