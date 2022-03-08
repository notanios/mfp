part of user_dto_model;

@freezed
class CompleteProfileBody with _$CompleteProfileBody {
  factory CompleteProfileBody({
    @JsonKey(name: 'ApiToken') String? token,
    @JsonKey(name: 'PhoneNumber') String? phoneNumber,
    @JsonKey(name: 'Password') String? password,
    @JsonKey(name: 'Locations') List<String>? locations,
    @JsonKey(name: 'Services') List<String>? services,
    @JsonKey(name: 'Details') String? details,
    @JsonKey(name: 'IsActive') bool? isActive,
    @JsonKey(name: 'PushNotificationToken') String? pushToken,
  }) = _CompleteProfileBody;

  factory CompleteProfileBody.fromJson(Map<String, dynamic> json) =>
      _$CompleteProfileBodyFromJson(json);
}