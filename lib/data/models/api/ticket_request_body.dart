part of user_dto_model;

@freezed
class TicketRequestBody with _$TicketRequestBody {
  factory TicketRequestBody({
    @JsonKey(name: 'ApiToken') String? token,
    @JsonKey(name: 'PhoneNumber') String? phoneNumber,
    @JsonKey(name: 'Password') String? password,
    @JsonKey(name: 'GiverPublicCodeID') String? giverPublicCodeID,
  }) = _TicketRequestBody;

  factory TicketRequestBody.fromJson(Map<String, dynamic> json) =>
      _$TicketRequestBodyFromJson(json);
}