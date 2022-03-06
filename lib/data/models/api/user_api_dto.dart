part of user_dto_model;

@freezed
class UserApiDto with _$UserApiDto {
  factory UserApiDto({
    @JsonKey(name: 'name') String? firstName,
  }) = _UserApiDto;

  factory UserApiDto.fromJson(Map<String, dynamic> json) =>
      _$UserApiDtoFromJson(json);
}
