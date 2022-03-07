// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_dto_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserApiDto _$$_UserApiDtoFromJson(Map<String, dynamic> json) =>
    _$_UserApiDto(
      firstName: json['name'] as String?,
    );

Map<String, dynamic> _$$_UserApiDtoToJson(_$_UserApiDto instance) =>
    <String, dynamic>{
      'name': instance.firstName,
    };

_$_UserResponseApiDto _$$_UserResponseApiDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UserResponseApiDto(
      data: (json['data'] as List<dynamic>)
          .map((e) => UserApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserResponseApiDtoToJson(
        _$_UserResponseApiDto instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Distrinct _$$_DistrinctFromJson(Map<String, dynamic> json) => _$_Distrinct(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_DistrinctToJson(_$_Distrinct instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };
