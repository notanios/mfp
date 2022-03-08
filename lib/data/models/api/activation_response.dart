part of user_dto_model;

@freezed
class ActivationResponse with _$ActivationResponse {
  factory ActivationResponse({
    @JsonKey(name: 'password') String? password,
  }) = _ActivationResponse;

  factory ActivationResponse.fromJson(Map<String, dynamic> json) =>
      _$ActivationResponseFromJson(json);
}