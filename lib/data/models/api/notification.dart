part of user_dto_model;

@freezed
class Notifications with _$Notifications {
  factory Notifications({
    @Default(0)
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'description') String? descriptions,
    @JsonKey(name: 'status') String? status,
  }) = _Notifications;

  factory Notifications.fromJson(Map<String, dynamic> json) =>
      _$NotificationsFromJson(json);
}