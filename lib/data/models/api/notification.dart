part of user_dto_model;

@freezed
class HelpNotification with _$HelpNotification {
  factory HelpNotification({
    @Default(0)
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'description') String? descriptions,
    @JsonKey(name: 'status') String? status,
  }) = _HelpNotification;

  factory HelpNotification.fromJson(Map<String, dynamic> json) =>
      _$HelpNotificationFromJson(json);
}