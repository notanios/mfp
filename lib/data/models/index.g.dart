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

_$_HelpNotification _$$_HelpNotificationFromJson(Map<String, dynamic> json) =>
    _$_HelpNotification(
      id: json['id'] as int? ?? 0,
      type: json['type'] as String?,
      descriptions: json['description'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_HelpNotificationToJson(_$_HelpNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'description': instance.descriptions,
      'status': instance.status,
    };

_$_RegisterBody _$$_RegisterBodyFromJson(Map<String, dynamic> json) =>
    _$_RegisterBody(
      token: json['ApiToken'] as String?,
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      email: json['EmailAddress'] as String?,
    );

Map<String, dynamic> _$$_RegisterBodyToJson(_$_RegisterBody instance) =>
    <String, dynamic>{
      'ApiToken': instance.token,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'PhoneNumber': instance.phoneNumber,
      'EmailAddress': instance.email,
    };

_$_ActivationResponse _$$_ActivationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ActivationResponse(
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_ActivationResponseToJson(
        _$_ActivationResponse instance) =>
    <String, dynamic>{
      'password': instance.password,
    };

_$_ActivationBody _$$_ActivationBodyFromJson(Map<String, dynamic> json) =>
    _$_ActivationBody(
      token: json['ApiToken'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      activationCode: json['ActivationCode'] as String?,
    );

Map<String, dynamic> _$$_ActivationBodyToJson(_$_ActivationBody instance) =>
    <String, dynamic>{
      'ApiToken': instance.token,
      'PhoneNumber': instance.phoneNumber,
      'ActivationCode': instance.activationCode,
    };

_$_CompleteProfileBody _$$_CompleteProfileBodyFromJson(
        Map<String, dynamic> json) =>
    _$_CompleteProfileBody(
      token: json['ApiToken'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      password: json['Password'] as String?,
      locations: (json['Locations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      services: (json['Services'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      details: json['Details'] as String?,
      isActive: json['IsActive'] as bool?,
      pushToken: json['PushNotificationToken'] as String?,
    );

Map<String, dynamic> _$$_CompleteProfileBodyToJson(
        _$_CompleteProfileBody instance) =>
    <String, dynamic>{
      'ApiToken': instance.token,
      'PhoneNumber': instance.phoneNumber,
      'Password': instance.password,
      'Locations': instance.locations,
      'Services': instance.services,
      'Details': instance.details,
      'IsActive': instance.isActive,
      'PushNotificationToken': instance.pushToken,
    };

_$_Ticket _$$_TicketFromJson(Map<String, dynamic> json) => _$_Ticket(
      giverPublicCodeID: json['giverPublicCodeID'] as String?,
      contactPerson: json['contactPerson'] as String?,
      contactPhoneNumber: json['contactPhoneNumber'] as String?,
      males: json['males'] as int?,
      females: json['females'] as int?,
      children: json['children'] as int?,
      animals: json['animals'] as int?,
      haveTransport: json['haveTransport'] as bool?,
      helpType: json['helpType'] as int?,
      askingText: json['askingText'] as String?,
    );

Map<String, dynamic> _$$_TicketToJson(_$_Ticket instance) => <String, dynamic>{
      'giverPublicCodeID': instance.giverPublicCodeID,
      'contactPerson': instance.contactPerson,
      'contactPhoneNumber': instance.contactPhoneNumber,
      'males': instance.males,
      'females': instance.females,
      'children': instance.children,
      'animals': instance.animals,
      'haveTransport': instance.haveTransport,
      'helpType': instance.helpType,
      'askingText': instance.askingText,
    };

_$_TicketRequestBody _$$_TicketRequestBodyFromJson(Map<String, dynamic> json) =>
    _$_TicketRequestBody(
      token: json['ApiToken'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      password: json['Password'] as String?,
      giverPublicCodeID: json['GiverPublicCodeID'] as String?,
    );

Map<String, dynamic> _$$_TicketRequestBodyToJson(
        _$_TicketRequestBody instance) =>
    <String, dynamic>{
      'ApiToken': instance.token,
      'PhoneNumber': instance.phoneNumber,
      'Password': instance.password,
      'GiverPublicCodeID': instance.giverPublicCodeID,
    };
