part of user_dto_model;

@freezed
class Distrinct with _$Distrinct {
  factory Distrinct({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'name') String? name,
  }) = _Distrinct;

  factory Distrinct.fromJson(Map<String, dynamic> json) =>
      _$DistrinctFromJson(json);
}