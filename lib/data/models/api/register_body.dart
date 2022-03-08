part of user_dto_model;

@freezed
class RegisterBody with _$RegisterBody {
  factory RegisterBody({
    @JsonKey(name: 'ApiToken') String? token,
    @JsonKey(name: 'FirstName') String? firstName,
    @JsonKey(name: 'LastName') String? lastName,
    @JsonKey(name: 'PhoneNumber') String? phoneNumber,
    @JsonKey(name: 'EmailAddress') String? email,
  }) = _RegisterBody;

  factory RegisterBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterBodyFromJson(json);
}