import 'package:json_annotation/json_annotation.dart';
import 'package:will_app/domain/entities/request/printer_scanner_create.dart';

part 'printer_scanner_request.g.dart';

@JsonSerializable(explicitToJson: true)
class PrinterScannerCreateRequest extends PrinterScannerCreate {
  PrinterScannerCreateRequest({
    required this.newType,
    required this.newCampus,
    required this.newBrand,
    required this.newModel,
    required this.newSerial,
    this.newLicensePlate,
    required this.newArea,
    required this.newUser,
    required this.newCc,
    this.newPhone,
  }) : super(
          type: newType,
          campus: newCampus,
          brand: newBrand,
          model: newModel,
          serial: newSerial,
          area: newArea,
          user: newUser,
          cc: newCc,
        );

  @JsonKey(name: 'type')
  final String newType;

  @JsonKey(name: 'campus')
  final String newCampus;

  @JsonKey(name: 'brand')
  final String newBrand;

  @JsonKey(name: 'model')
  final String newModel;

  @JsonKey(name: 'serial')
  final String newSerial;

  @JsonKey(name: 'license_plate')
  final String? newLicensePlate;

  @JsonKey(name: 'area')
  final String newArea;

  @JsonKey(name: 'user')
  final String newUser;

  @JsonKey(name: 'cc')
  final String newCc;

  @JsonKey(name: 'phone')
  final String? newPhone;

  factory PrinterScannerCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$PrinterScannerCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PrinterScannerCreateRequestToJson(this);
}
