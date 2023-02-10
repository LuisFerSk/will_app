import 'package:json_annotation/json_annotation.dart';
import 'package:will_app/domain/entities/maintenance_find_made_per_day.dart';

part 'maintenance_find_made_per_day_response.g.dart';

@JsonSerializable(explicitToJson: true)
class MaintenanceFindMadePerDayResponse extends MaintenanceFindMadePerDay {
  MaintenanceFindMadePerDayResponse({
    this.newStatus,
    this.newMessage,
    this.newInfo,
  }) : super(
          status: newStatus ?? '',
          message: newMessage ?? '',
          info: newInfo ?? [],
        );

  @JsonKey(name: 'status')
  final String? newStatus;

  @JsonKey(name: 'message')
  final String? newMessage;

  @JsonKey(name: 'info')
  final List<InfoResponse>? newInfo;

  factory MaintenanceFindMadePerDayResponse.fromJson(
          Map<String, dynamic> json) =>
      _$MaintenanceFindMadePerDayResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MaintenanceFindMadePerDayResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InfoResponse extends Info {
  InfoResponse({
    this.newDate,
    this.newCount,
  }) : super(
          date: newDate ?? DateTime(0, 0, 0, 0, 0, 0, 0, 0),
          count: newCount ?? -1,
        );

  @JsonKey(name: 'date')
  final DateTime? newDate;

  @JsonKey(name: 'count')
  final int? newCount;

  factory InfoResponse.fromJson(Map<String, dynamic> json) =>
      _$InfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InfoResponseToJson(this);
}
