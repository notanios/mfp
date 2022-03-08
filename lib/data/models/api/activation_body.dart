part of user_dto_model;

@freezed
class ActivationBody with _$ActivationBody {
  factory ActivationBody({
    @JsonKey(name: 'ApiToken') String? token,
    @JsonKey(name: 'PhoneNumber') String? phoneNumber,
    @JsonKey(name: 'ActivationCode') String? activationCode,
  }) = _ActivationBody;

  factory ActivationBody.fromJson(Map<String, dynamic> json) =>
      _$ActivationBodyFromJson(json);
}