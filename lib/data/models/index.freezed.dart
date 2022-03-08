// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of user_dto_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserApiDto _$UserApiDtoFromJson(Map<String, dynamic> json) {
  return _UserApiDto.fromJson(json);
}

/// @nodoc
class _$UserApiDtoTearOff {
  const _$UserApiDtoTearOff();

  _UserApiDto call({@JsonKey(name: 'name') String? firstName}) {
    return _UserApiDto(
      firstName: firstName,
    );
  }

  UserApiDto fromJson(Map<String, Object?> json) {
    return UserApiDto.fromJson(json);
  }
}

/// @nodoc
const $UserApiDto = _$UserApiDtoTearOff();

/// @nodoc
mixin _$UserApiDto {
  @JsonKey(name: 'name')
  String? get firstName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserApiDtoCopyWith<UserApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserApiDtoCopyWith<$Res> {
  factory $UserApiDtoCopyWith(
          UserApiDto value, $Res Function(UserApiDto) then) =
      _$UserApiDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'name') String? firstName});
}

/// @nodoc
class _$UserApiDtoCopyWithImpl<$Res> implements $UserApiDtoCopyWith<$Res> {
  _$UserApiDtoCopyWithImpl(this._value, this._then);

  final UserApiDto _value;
  // ignore: unused_field
  final $Res Function(UserApiDto) _then;

  @override
  $Res call({
    Object? firstName = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserApiDtoCopyWith<$Res> implements $UserApiDtoCopyWith<$Res> {
  factory _$UserApiDtoCopyWith(
          _UserApiDto value, $Res Function(_UserApiDto) then) =
      __$UserApiDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'name') String? firstName});
}

/// @nodoc
class __$UserApiDtoCopyWithImpl<$Res> extends _$UserApiDtoCopyWithImpl<$Res>
    implements _$UserApiDtoCopyWith<$Res> {
  __$UserApiDtoCopyWithImpl(
      _UserApiDto _value, $Res Function(_UserApiDto) _then)
      : super(_value, (v) => _then(v as _UserApiDto));

  @override
  _UserApiDto get _value => super._value as _UserApiDto;

  @override
  $Res call({
    Object? firstName = freezed,
  }) {
    return _then(_UserApiDto(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserApiDto implements _UserApiDto {
  _$_UserApiDto({@JsonKey(name: 'name') this.firstName});

  factory _$_UserApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserApiDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? firstName;

  @override
  String toString() {
    return 'UserApiDto(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserApiDto &&
            const DeepCollectionEquality().equals(other.firstName, firstName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(firstName));

  @JsonKey(ignore: true)
  @override
  _$UserApiDtoCopyWith<_UserApiDto> get copyWith =>
      __$UserApiDtoCopyWithImpl<_UserApiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserApiDtoToJson(this);
  }
}

abstract class _UserApiDto implements UserApiDto {
  factory _UserApiDto({@JsonKey(name: 'name') String? firstName}) =
      _$_UserApiDto;

  factory _UserApiDto.fromJson(Map<String, dynamic> json) =
      _$_UserApiDto.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get firstName;
  @override
  @JsonKey(ignore: true)
  _$UserApiDtoCopyWith<_UserApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserResponseApiDto _$UserResponseApiDtoFromJson(Map<String, dynamic> json) {
  return _UserResponseApiDto.fromJson(json);
}

/// @nodoc
class _$UserResponseApiDtoTearOff {
  const _$UserResponseApiDtoTearOff();

  _UserResponseApiDto call({required List<UserApiDto> data}) {
    return _UserResponseApiDto(
      data: data,
    );
  }

  UserResponseApiDto fromJson(Map<String, Object?> json) {
    return UserResponseApiDto.fromJson(json);
  }
}

/// @nodoc
const $UserResponseApiDto = _$UserResponseApiDtoTearOff();

/// @nodoc
mixin _$UserResponseApiDto {
  List<UserApiDto> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseApiDtoCopyWith<UserResponseApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseApiDtoCopyWith<$Res> {
  factory $UserResponseApiDtoCopyWith(
          UserResponseApiDto value, $Res Function(UserResponseApiDto) then) =
      _$UserResponseApiDtoCopyWithImpl<$Res>;
  $Res call({List<UserApiDto> data});
}

/// @nodoc
class _$UserResponseApiDtoCopyWithImpl<$Res>
    implements $UserResponseApiDtoCopyWith<$Res> {
  _$UserResponseApiDtoCopyWithImpl(this._value, this._then);

  final UserResponseApiDto _value;
  // ignore: unused_field
  final $Res Function(UserResponseApiDto) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserApiDto>,
    ));
  }
}

/// @nodoc
abstract class _$UserResponseApiDtoCopyWith<$Res>
    implements $UserResponseApiDtoCopyWith<$Res> {
  factory _$UserResponseApiDtoCopyWith(
          _UserResponseApiDto value, $Res Function(_UserResponseApiDto) then) =
      __$UserResponseApiDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<UserApiDto> data});
}

/// @nodoc
class __$UserResponseApiDtoCopyWithImpl<$Res>
    extends _$UserResponseApiDtoCopyWithImpl<$Res>
    implements _$UserResponseApiDtoCopyWith<$Res> {
  __$UserResponseApiDtoCopyWithImpl(
      _UserResponseApiDto _value, $Res Function(_UserResponseApiDto) _then)
      : super(_value, (v) => _then(v as _UserResponseApiDto));

  @override
  _UserResponseApiDto get _value => super._value as _UserResponseApiDto;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_UserResponseApiDto(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserApiDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponseApiDto implements _UserResponseApiDto {
  _$_UserResponseApiDto({required this.data});

  factory _$_UserResponseApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseApiDtoFromJson(json);

  @override
  final List<UserApiDto> data;

  @override
  String toString() {
    return 'UserResponseApiDto(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserResponseApiDto &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$UserResponseApiDtoCopyWith<_UserResponseApiDto> get copyWith =>
      __$UserResponseApiDtoCopyWithImpl<_UserResponseApiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseApiDtoToJson(this);
  }
}

abstract class _UserResponseApiDto implements UserResponseApiDto {
  factory _UserResponseApiDto({required List<UserApiDto> data}) =
      _$_UserResponseApiDto;

  factory _UserResponseApiDto.fromJson(Map<String, dynamic> json) =
      _$_UserResponseApiDto.fromJson;

  @override
  List<UserApiDto> get data;
  @override
  @JsonKey(ignore: true)
  _$UserResponseApiDtoCopyWith<_UserResponseApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Distrinct _$DistrinctFromJson(Map<String, dynamic> json) {
  return _Distrinct.fromJson(json);
}

/// @nodoc
class _$DistrinctTearOff {
  const _$DistrinctTearOff();

  _Distrinct call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'name') String? name}) {
    return _Distrinct(
      code: code,
      name: name,
    );
  }

  Distrinct fromJson(Map<String, Object?> json) {
    return Distrinct.fromJson(json);
  }
}

/// @nodoc
const $Distrinct = _$DistrinctTearOff();

/// @nodoc
mixin _$Distrinct {
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrinctCopyWith<Distrinct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrinctCopyWith<$Res> {
  factory $DistrinctCopyWith(Distrinct value, $Res Function(Distrinct) then) =
      _$DistrinctCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$DistrinctCopyWithImpl<$Res> implements $DistrinctCopyWith<$Res> {
  _$DistrinctCopyWithImpl(this._value, this._then);

  final Distrinct _value;
  // ignore: unused_field
  final $Res Function(Distrinct) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DistrinctCopyWith<$Res> implements $DistrinctCopyWith<$Res> {
  factory _$DistrinctCopyWith(
          _Distrinct value, $Res Function(_Distrinct) then) =
      __$DistrinctCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$DistrinctCopyWithImpl<$Res> extends _$DistrinctCopyWithImpl<$Res>
    implements _$DistrinctCopyWith<$Res> {
  __$DistrinctCopyWithImpl(_Distrinct _value, $Res Function(_Distrinct) _then)
      : super(_value, (v) => _then(v as _Distrinct));

  @override
  _Distrinct get _value => super._value as _Distrinct;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_Distrinct(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Distrinct implements _Distrinct {
  _$_Distrinct(
      {@JsonKey(name: 'code') this.code, @JsonKey(name: 'name') this.name});

  factory _$_Distrinct.fromJson(Map<String, dynamic> json) =>
      _$$_DistrinctFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'Distrinct(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Distrinct &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$DistrinctCopyWith<_Distrinct> get copyWith =>
      __$DistrinctCopyWithImpl<_Distrinct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DistrinctToJson(this);
  }
}

abstract class _Distrinct implements Distrinct {
  factory _Distrinct(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'name') String? name}) = _$_Distrinct;

  factory _Distrinct.fromJson(Map<String, dynamic> json) =
      _$_Distrinct.fromJson;

  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$DistrinctCopyWith<_Distrinct> get copyWith =>
      throw _privateConstructorUsedError;
}

HelpNotification _$HelpNotificationFromJson(Map<String, dynamic> json) {
  return _HelpNotification.fromJson(json);
}

/// @nodoc
class _$HelpNotificationTearOff {
  const _$HelpNotificationTearOff();

  _HelpNotification call(
      {@JsonKey(name: 'id') int id = 0,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'description') String? descriptions,
      @JsonKey(name: 'status') String? status}) {
    return _HelpNotification(
      id: id,
      type: type,
      descriptions: descriptions,
      status: status,
    );
  }

  HelpNotification fromJson(Map<String, Object?> json) {
    return HelpNotification.fromJson(json);
  }
}

/// @nodoc
const $HelpNotification = _$HelpNotificationTearOff();

/// @nodoc
mixin _$HelpNotification {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get descriptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelpNotificationCopyWith<HelpNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpNotificationCopyWith<$Res> {
  factory $HelpNotificationCopyWith(
          HelpNotification value, $Res Function(HelpNotification) then) =
      _$HelpNotificationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'description') String? descriptions,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$HelpNotificationCopyWithImpl<$Res>
    implements $HelpNotificationCopyWith<$Res> {
  _$HelpNotificationCopyWithImpl(this._value, this._then);

  final HelpNotification _value;
  // ignore: unused_field
  final $Res Function(HelpNotification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? descriptions = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HelpNotificationCopyWith<$Res>
    implements $HelpNotificationCopyWith<$Res> {
  factory _$HelpNotificationCopyWith(
          _HelpNotification value, $Res Function(_HelpNotification) then) =
      __$HelpNotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'description') String? descriptions,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$HelpNotificationCopyWithImpl<$Res>
    extends _$HelpNotificationCopyWithImpl<$Res>
    implements _$HelpNotificationCopyWith<$Res> {
  __$HelpNotificationCopyWithImpl(
      _HelpNotification _value, $Res Function(_HelpNotification) _then)
      : super(_value, (v) => _then(v as _HelpNotification));

  @override
  _HelpNotification get _value => super._value as _HelpNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? descriptions = freezed,
    Object? status = freezed,
  }) {
    return _then(_HelpNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HelpNotification implements _HelpNotification {
  _$_HelpNotification(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'description') this.descriptions,
      @JsonKey(name: 'status') this.status});

  factory _$_HelpNotification.fromJson(Map<String, dynamic> json) =>
      _$$_HelpNotificationFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'description')
  final String? descriptions;
  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'HelpNotification(id: $id, type: $type, descriptions: $descriptions, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelpNotification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.descriptions, descriptions) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(descriptions),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$HelpNotificationCopyWith<_HelpNotification> get copyWith =>
      __$HelpNotificationCopyWithImpl<_HelpNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelpNotificationToJson(this);
  }
}

abstract class _HelpNotification implements HelpNotification {
  factory _HelpNotification(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'description') String? descriptions,
      @JsonKey(name: 'status') String? status}) = _$_HelpNotification;

  factory _HelpNotification.fromJson(Map<String, dynamic> json) =
      _$_HelpNotification.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'description')
  String? get descriptions;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$HelpNotificationCopyWith<_HelpNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterBody _$RegisterBodyFromJson(Map<String, dynamic> json) {
  return _RegisterBody.fromJson(json);
}

/// @nodoc
class _$RegisterBodyTearOff {
  const _$RegisterBodyTearOff();

  _RegisterBody call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'FirstName') String? firstName,
      @JsonKey(name: 'LastName') String? lastName,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'EmailAddress') String? email}) {
    return _RegisterBody(
      token: token,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      email: email,
    );
  }

  RegisterBody fromJson(Map<String, Object?> json) {
    return RegisterBody.fromJson(json);
  }
}

/// @nodoc
const $RegisterBody = _$RegisterBodyTearOff();

/// @nodoc
mixin _$RegisterBody {
  @JsonKey(name: 'ApiToken')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'FirstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PhoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'EmailAddress')
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterBodyCopyWith<RegisterBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBodyCopyWith<$Res> {
  factory $RegisterBodyCopyWith(
          RegisterBody value, $Res Function(RegisterBody) then) =
      _$RegisterBodyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'FirstName') String? firstName,
      @JsonKey(name: 'LastName') String? lastName,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'EmailAddress') String? email});
}

/// @nodoc
class _$RegisterBodyCopyWithImpl<$Res> implements $RegisterBodyCopyWith<$Res> {
  _$RegisterBodyCopyWithImpl(this._value, this._then);

  final RegisterBody _value;
  // ignore: unused_field
  final $Res Function(RegisterBody) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RegisterBodyCopyWith<$Res>
    implements $RegisterBodyCopyWith<$Res> {
  factory _$RegisterBodyCopyWith(
          _RegisterBody value, $Res Function(_RegisterBody) then) =
      __$RegisterBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'FirstName') String? firstName,
      @JsonKey(name: 'LastName') String? lastName,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'EmailAddress') String? email});
}

/// @nodoc
class __$RegisterBodyCopyWithImpl<$Res> extends _$RegisterBodyCopyWithImpl<$Res>
    implements _$RegisterBodyCopyWith<$Res> {
  __$RegisterBodyCopyWithImpl(
      _RegisterBody _value, $Res Function(_RegisterBody) _then)
      : super(_value, (v) => _then(v as _RegisterBody));

  @override
  _RegisterBody get _value => super._value as _RegisterBody;

  @override
  $Res call({
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_RegisterBody(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterBody implements _RegisterBody {
  _$_RegisterBody(
      {@JsonKey(name: 'ApiToken') this.token,
      @JsonKey(name: 'FirstName') this.firstName,
      @JsonKey(name: 'LastName') this.lastName,
      @JsonKey(name: 'PhoneNumber') this.phoneNumber,
      @JsonKey(name: 'EmailAddress') this.email});

  factory _$_RegisterBody.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterBodyFromJson(json);

  @override
  @JsonKey(name: 'ApiToken')
  final String? token;
  @override
  @JsonKey(name: 'FirstName')
  final String? firstName;
  @override
  @JsonKey(name: 'LastName')
  final String? lastName;
  @override
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'EmailAddress')
  final String? email;

  @override
  String toString() {
    return 'RegisterBody(token: $token, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterBody &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$RegisterBodyCopyWith<_RegisterBody> get copyWith =>
      __$RegisterBodyCopyWithImpl<_RegisterBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterBodyToJson(this);
  }
}

abstract class _RegisterBody implements RegisterBody {
  factory _RegisterBody(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'FirstName') String? firstName,
      @JsonKey(name: 'LastName') String? lastName,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'EmailAddress') String? email}) = _$_RegisterBody;

  factory _RegisterBody.fromJson(Map<String, dynamic> json) =
      _$_RegisterBody.fromJson;

  @override
  @JsonKey(name: 'ApiToken')
  String? get token;
  @override
  @JsonKey(name: 'FirstName')
  String? get firstName;
  @override
  @JsonKey(name: 'LastName')
  String? get lastName;
  @override
  @JsonKey(name: 'PhoneNumber')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'EmailAddress')
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$RegisterBodyCopyWith<_RegisterBody> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivationResponse _$ActivationResponseFromJson(Map<String, dynamic> json) {
  return _ActivationResponse.fromJson(json);
}

/// @nodoc
class _$ActivationResponseTearOff {
  const _$ActivationResponseTearOff();

  _ActivationResponse call({@JsonKey(name: 'password') String? password}) {
    return _ActivationResponse(
      password: password,
    );
  }

  ActivationResponse fromJson(Map<String, Object?> json) {
    return ActivationResponse.fromJson(json);
  }
}

/// @nodoc
const $ActivationResponse = _$ActivationResponseTearOff();

/// @nodoc
mixin _$ActivationResponse {
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivationResponseCopyWith<ActivationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivationResponseCopyWith<$Res> {
  factory $ActivationResponseCopyWith(
          ActivationResponse value, $Res Function(ActivationResponse) then) =
      _$ActivationResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$ActivationResponseCopyWithImpl<$Res>
    implements $ActivationResponseCopyWith<$Res> {
  _$ActivationResponseCopyWithImpl(this._value, this._then);

  final ActivationResponse _value;
  // ignore: unused_field
  final $Res Function(ActivationResponse) _then;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ActivationResponseCopyWith<$Res>
    implements $ActivationResponseCopyWith<$Res> {
  factory _$ActivationResponseCopyWith(
          _ActivationResponse value, $Res Function(_ActivationResponse) then) =
      __$ActivationResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$ActivationResponseCopyWithImpl<$Res>
    extends _$ActivationResponseCopyWithImpl<$Res>
    implements _$ActivationResponseCopyWith<$Res> {
  __$ActivationResponseCopyWithImpl(
      _ActivationResponse _value, $Res Function(_ActivationResponse) _then)
      : super(_value, (v) => _then(v as _ActivationResponse));

  @override
  _ActivationResponse get _value => super._value as _ActivationResponse;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_ActivationResponse(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivationResponse implements _ActivationResponse {
  _$_ActivationResponse({@JsonKey(name: 'password') this.password});

  factory _$_ActivationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ActivationResponseFromJson(json);

  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'ActivationResponse(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivationResponse &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$ActivationResponseCopyWith<_ActivationResponse> get copyWith =>
      __$ActivationResponseCopyWithImpl<_ActivationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivationResponseToJson(this);
  }
}

abstract class _ActivationResponse implements ActivationResponse {
  factory _ActivationResponse({@JsonKey(name: 'password') String? password}) =
      _$_ActivationResponse;

  factory _ActivationResponse.fromJson(Map<String, dynamic> json) =
      _$_ActivationResponse.fromJson;

  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$ActivationResponseCopyWith<_ActivationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivationBody _$ActivationBodyFromJson(Map<String, dynamic> json) {
  return _ActivationBody.fromJson(json);
}

/// @nodoc
class _$ActivationBodyTearOff {
  const _$ActivationBodyTearOff();

  _ActivationBody call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'ActivationCode') String? activationCode}) {
    return _ActivationBody(
      token: token,
      phoneNumber: phoneNumber,
      activationCode: activationCode,
    );
  }

  ActivationBody fromJson(Map<String, Object?> json) {
    return ActivationBody.fromJson(json);
  }
}

/// @nodoc
const $ActivationBody = _$ActivationBodyTearOff();

/// @nodoc
mixin _$ActivationBody {
  @JsonKey(name: 'ApiToken')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'PhoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'ActivationCode')
  String? get activationCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivationBodyCopyWith<ActivationBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivationBodyCopyWith<$Res> {
  factory $ActivationBodyCopyWith(
          ActivationBody value, $Res Function(ActivationBody) then) =
      _$ActivationBodyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'ActivationCode') String? activationCode});
}

/// @nodoc
class _$ActivationBodyCopyWithImpl<$Res>
    implements $ActivationBodyCopyWith<$Res> {
  _$ActivationBodyCopyWithImpl(this._value, this._then);

  final ActivationBody _value;
  // ignore: unused_field
  final $Res Function(ActivationBody) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? phoneNumber = freezed,
    Object? activationCode = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      activationCode: activationCode == freezed
          ? _value.activationCode
          : activationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ActivationBodyCopyWith<$Res>
    implements $ActivationBodyCopyWith<$Res> {
  factory _$ActivationBodyCopyWith(
          _ActivationBody value, $Res Function(_ActivationBody) then) =
      __$ActivationBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'ActivationCode') String? activationCode});
}

/// @nodoc
class __$ActivationBodyCopyWithImpl<$Res>
    extends _$ActivationBodyCopyWithImpl<$Res>
    implements _$ActivationBodyCopyWith<$Res> {
  __$ActivationBodyCopyWithImpl(
      _ActivationBody _value, $Res Function(_ActivationBody) _then)
      : super(_value, (v) => _then(v as _ActivationBody));

  @override
  _ActivationBody get _value => super._value as _ActivationBody;

  @override
  $Res call({
    Object? token = freezed,
    Object? phoneNumber = freezed,
    Object? activationCode = freezed,
  }) {
    return _then(_ActivationBody(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      activationCode: activationCode == freezed
          ? _value.activationCode
          : activationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivationBody implements _ActivationBody {
  _$_ActivationBody(
      {@JsonKey(name: 'ApiToken') this.token,
      @JsonKey(name: 'PhoneNumber') this.phoneNumber,
      @JsonKey(name: 'ActivationCode') this.activationCode});

  factory _$_ActivationBody.fromJson(Map<String, dynamic> json) =>
      _$$_ActivationBodyFromJson(json);

  @override
  @JsonKey(name: 'ApiToken')
  final String? token;
  @override
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'ActivationCode')
  final String? activationCode;

  @override
  String toString() {
    return 'ActivationBody(token: $token, phoneNumber: $phoneNumber, activationCode: $activationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivationBody &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.activationCode, activationCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(activationCode));

  @JsonKey(ignore: true)
  @override
  _$ActivationBodyCopyWith<_ActivationBody> get copyWith =>
      __$ActivationBodyCopyWithImpl<_ActivationBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivationBodyToJson(this);
  }
}

abstract class _ActivationBody implements ActivationBody {
  factory _ActivationBody(
          {@JsonKey(name: 'ApiToken') String? token,
          @JsonKey(name: 'PhoneNumber') String? phoneNumber,
          @JsonKey(name: 'ActivationCode') String? activationCode}) =
      _$_ActivationBody;

  factory _ActivationBody.fromJson(Map<String, dynamic> json) =
      _$_ActivationBody.fromJson;

  @override
  @JsonKey(name: 'ApiToken')
  String? get token;
  @override
  @JsonKey(name: 'PhoneNumber')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'ActivationCode')
  String? get activationCode;
  @override
  @JsonKey(ignore: true)
  _$ActivationBodyCopyWith<_ActivationBody> get copyWith =>
      throw _privateConstructorUsedError;
}

CompleteProfileBody _$CompleteProfileBodyFromJson(Map<String, dynamic> json) {
  return _CompleteProfileBody.fromJson(json);
}

/// @nodoc
class _$CompleteProfileBodyTearOff {
  const _$CompleteProfileBodyTearOff();

  _CompleteProfileBody call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'Password') String? password,
      @JsonKey(name: 'Locations') List<String>? locations,
      @JsonKey(name: 'Services') List<String>? services,
      @JsonKey(name: 'Details') String? details,
      @JsonKey(name: 'IsActive') bool? isActive,
      @JsonKey(name: 'PushNotificationToken') String? pushToken}) {
    return _CompleteProfileBody(
      token: token,
      phoneNumber: phoneNumber,
      password: password,
      locations: locations,
      services: services,
      details: details,
      isActive: isActive,
      pushToken: pushToken,
    );
  }

  CompleteProfileBody fromJson(Map<String, Object?> json) {
    return CompleteProfileBody.fromJson(json);
  }
}

/// @nodoc
const $CompleteProfileBody = _$CompleteProfileBodyTearOff();

/// @nodoc
mixin _$CompleteProfileBody {
  @JsonKey(name: 'ApiToken')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'PhoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'Password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'Locations')
  List<String>? get locations => throw _privateConstructorUsedError;
  @JsonKey(name: 'Services')
  List<String>? get services => throw _privateConstructorUsedError;
  @JsonKey(name: 'Details')
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsActive')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'PushNotificationToken')
  String? get pushToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompleteProfileBodyCopyWith<CompleteProfileBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteProfileBodyCopyWith<$Res> {
  factory $CompleteProfileBodyCopyWith(
          CompleteProfileBody value, $Res Function(CompleteProfileBody) then) =
      _$CompleteProfileBodyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'Password') String? password,
      @JsonKey(name: 'Locations') List<String>? locations,
      @JsonKey(name: 'Services') List<String>? services,
      @JsonKey(name: 'Details') String? details,
      @JsonKey(name: 'IsActive') bool? isActive,
      @JsonKey(name: 'PushNotificationToken') String? pushToken});
}

/// @nodoc
class _$CompleteProfileBodyCopyWithImpl<$Res>
    implements $CompleteProfileBodyCopyWith<$Res> {
  _$CompleteProfileBodyCopyWithImpl(this._value, this._then);

  final CompleteProfileBody _value;
  // ignore: unused_field
  final $Res Function(CompleteProfileBody) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? locations = freezed,
    Object? services = freezed,
    Object? details = freezed,
    Object? isActive = freezed,
    Object? pushToken = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      pushToken: pushToken == freezed
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CompleteProfileBodyCopyWith<$Res>
    implements $CompleteProfileBodyCopyWith<$Res> {
  factory _$CompleteProfileBodyCopyWith(_CompleteProfileBody value,
          $Res Function(_CompleteProfileBody) then) =
      __$CompleteProfileBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'Password') String? password,
      @JsonKey(name: 'Locations') List<String>? locations,
      @JsonKey(name: 'Services') List<String>? services,
      @JsonKey(name: 'Details') String? details,
      @JsonKey(name: 'IsActive') bool? isActive,
      @JsonKey(name: 'PushNotificationToken') String? pushToken});
}

/// @nodoc
class __$CompleteProfileBodyCopyWithImpl<$Res>
    extends _$CompleteProfileBodyCopyWithImpl<$Res>
    implements _$CompleteProfileBodyCopyWith<$Res> {
  __$CompleteProfileBodyCopyWithImpl(
      _CompleteProfileBody _value, $Res Function(_CompleteProfileBody) _then)
      : super(_value, (v) => _then(v as _CompleteProfileBody));

  @override
  _CompleteProfileBody get _value => super._value as _CompleteProfileBody;

  @override
  $Res call({
    Object? token = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? locations = freezed,
    Object? services = freezed,
    Object? details = freezed,
    Object? isActive = freezed,
    Object? pushToken = freezed,
  }) {
    return _then(_CompleteProfileBody(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      pushToken: pushToken == freezed
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompleteProfileBody implements _CompleteProfileBody {
  _$_CompleteProfileBody(
      {@JsonKey(name: 'ApiToken') this.token,
      @JsonKey(name: 'PhoneNumber') this.phoneNumber,
      @JsonKey(name: 'Password') this.password,
      @JsonKey(name: 'Locations') this.locations,
      @JsonKey(name: 'Services') this.services,
      @JsonKey(name: 'Details') this.details,
      @JsonKey(name: 'IsActive') this.isActive,
      @JsonKey(name: 'PushNotificationToken') this.pushToken});

  factory _$_CompleteProfileBody.fromJson(Map<String, dynamic> json) =>
      _$$_CompleteProfileBodyFromJson(json);

  @override
  @JsonKey(name: 'ApiToken')
  final String? token;
  @override
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'Password')
  final String? password;
  @override
  @JsonKey(name: 'Locations')
  final List<String>? locations;
  @override
  @JsonKey(name: 'Services')
  final List<String>? services;
  @override
  @JsonKey(name: 'Details')
  final String? details;
  @override
  @JsonKey(name: 'IsActive')
  final bool? isActive;
  @override
  @JsonKey(name: 'PushNotificationToken')
  final String? pushToken;

  @override
  String toString() {
    return 'CompleteProfileBody(token: $token, phoneNumber: $phoneNumber, password: $password, locations: $locations, services: $services, details: $details, isActive: $isActive, pushToken: $pushToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompleteProfileBody &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.locations, locations) &&
            const DeepCollectionEquality().equals(other.services, services) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.pushToken, pushToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(locations),
      const DeepCollectionEquality().hash(services),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(pushToken));

  @JsonKey(ignore: true)
  @override
  _$CompleteProfileBodyCopyWith<_CompleteProfileBody> get copyWith =>
      __$CompleteProfileBodyCopyWithImpl<_CompleteProfileBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompleteProfileBodyToJson(this);
  }
}

abstract class _CompleteProfileBody implements CompleteProfileBody {
  factory _CompleteProfileBody(
          {@JsonKey(name: 'ApiToken') String? token,
          @JsonKey(name: 'PhoneNumber') String? phoneNumber,
          @JsonKey(name: 'Password') String? password,
          @JsonKey(name: 'Locations') List<String>? locations,
          @JsonKey(name: 'Services') List<String>? services,
          @JsonKey(name: 'Details') String? details,
          @JsonKey(name: 'IsActive') bool? isActive,
          @JsonKey(name: 'PushNotificationToken') String? pushToken}) =
      _$_CompleteProfileBody;

  factory _CompleteProfileBody.fromJson(Map<String, dynamic> json) =
      _$_CompleteProfileBody.fromJson;

  @override
  @JsonKey(name: 'ApiToken')
  String? get token;
  @override
  @JsonKey(name: 'PhoneNumber')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'Password')
  String? get password;
  @override
  @JsonKey(name: 'Locations')
  List<String>? get locations;
  @override
  @JsonKey(name: 'Services')
  List<String>? get services;
  @override
  @JsonKey(name: 'Details')
  String? get details;
  @override
  @JsonKey(name: 'IsActive')
  bool? get isActive;
  @override
  @JsonKey(name: 'PushNotificationToken')
  String? get pushToken;
  @override
  @JsonKey(ignore: true)
  _$CompleteProfileBodyCopyWith<_CompleteProfileBody> get copyWith =>
      throw _privateConstructorUsedError;
}

Ticket _$TicketFromJson(Map<String, dynamic> json) {
  return _Ticket.fromJson(json);
}

/// @nodoc
class _$TicketTearOff {
  const _$TicketTearOff();

  _Ticket call(
      {@JsonKey(name: 'giverPublicCodeID') String? giverPublicCodeID,
      @JsonKey(name: 'contactPerson') String? contactPerson,
      @JsonKey(name: 'contactPhoneNumber') String? contactPhoneNumber,
      @JsonKey(name: 'males') int? males,
      @JsonKey(name: 'females') int? females,
      @JsonKey(name: 'children') int? children,
      @JsonKey(name: 'animals') int? animals,
      @JsonKey(name: 'haveTransport') bool? haveTransport,
      @JsonKey(name: 'helpType') int? helpType,
      @JsonKey(name: 'askingText') String? askingText}) {
    return _Ticket(
      giverPublicCodeID: giverPublicCodeID,
      contactPerson: contactPerson,
      contactPhoneNumber: contactPhoneNumber,
      males: males,
      females: females,
      children: children,
      animals: animals,
      haveTransport: haveTransport,
      helpType: helpType,
      askingText: askingText,
    );
  }

  Ticket fromJson(Map<String, Object?> json) {
    return Ticket.fromJson(json);
  }
}

/// @nodoc
const $Ticket = _$TicketTearOff();

/// @nodoc
mixin _$Ticket {
  @JsonKey(name: 'giverPublicCodeID')
  String? get giverPublicCodeID => throw _privateConstructorUsedError;
  @JsonKey(name: 'contactPerson')
  String? get contactPerson => throw _privateConstructorUsedError;
  @JsonKey(name: 'contactPhoneNumber')
  String? get contactPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'males')
  int? get males => throw _privateConstructorUsedError;
  @JsonKey(name: 'females')
  int? get females => throw _privateConstructorUsedError;
  @JsonKey(name: 'children')
  int? get children => throw _privateConstructorUsedError;
  @JsonKey(name: 'animals')
  int? get animals => throw _privateConstructorUsedError;
  @JsonKey(name: 'haveTransport')
  bool? get haveTransport => throw _privateConstructorUsedError;
  @JsonKey(name: 'helpType')
  int? get helpType => throw _privateConstructorUsedError;
  @JsonKey(name: 'askingText')
  String? get askingText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketCopyWith<Ticket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCopyWith<$Res> {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) then) =
      _$TicketCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'giverPublicCodeID') String? giverPublicCodeID,
      @JsonKey(name: 'contactPerson') String? contactPerson,
      @JsonKey(name: 'contactPhoneNumber') String? contactPhoneNumber,
      @JsonKey(name: 'males') int? males,
      @JsonKey(name: 'females') int? females,
      @JsonKey(name: 'children') int? children,
      @JsonKey(name: 'animals') int? animals,
      @JsonKey(name: 'haveTransport') bool? haveTransport,
      @JsonKey(name: 'helpType') int? helpType,
      @JsonKey(name: 'askingText') String? askingText});
}

/// @nodoc
class _$TicketCopyWithImpl<$Res> implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._value, this._then);

  final Ticket _value;
  // ignore: unused_field
  final $Res Function(Ticket) _then;

  @override
  $Res call({
    Object? giverPublicCodeID = freezed,
    Object? contactPerson = freezed,
    Object? contactPhoneNumber = freezed,
    Object? males = freezed,
    Object? females = freezed,
    Object? children = freezed,
    Object? animals = freezed,
    Object? haveTransport = freezed,
    Object? helpType = freezed,
    Object? askingText = freezed,
  }) {
    return _then(_value.copyWith(
      giverPublicCodeID: giverPublicCodeID == freezed
          ? _value.giverPublicCodeID
          : giverPublicCodeID // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: contactPerson == freezed
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhoneNumber: contactPhoneNumber == freezed
          ? _value.contactPhoneNumber
          : contactPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      males: males == freezed
          ? _value.males
          : males // ignore: cast_nullable_to_non_nullable
              as int?,
      females: females == freezed
          ? _value.females
          : females // ignore: cast_nullable_to_non_nullable
              as int?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
      animals: animals == freezed
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as int?,
      haveTransport: haveTransport == freezed
          ? _value.haveTransport
          : haveTransport // ignore: cast_nullable_to_non_nullable
              as bool?,
      helpType: helpType == freezed
          ? _value.helpType
          : helpType // ignore: cast_nullable_to_non_nullable
              as int?,
      askingText: askingText == freezed
          ? _value.askingText
          : askingText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TicketCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$TicketCopyWith(_Ticket value, $Res Function(_Ticket) then) =
      __$TicketCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'giverPublicCodeID') String? giverPublicCodeID,
      @JsonKey(name: 'contactPerson') String? contactPerson,
      @JsonKey(name: 'contactPhoneNumber') String? contactPhoneNumber,
      @JsonKey(name: 'males') int? males,
      @JsonKey(name: 'females') int? females,
      @JsonKey(name: 'children') int? children,
      @JsonKey(name: 'animals') int? animals,
      @JsonKey(name: 'haveTransport') bool? haveTransport,
      @JsonKey(name: 'helpType') int? helpType,
      @JsonKey(name: 'askingText') String? askingText});
}

/// @nodoc
class __$TicketCopyWithImpl<$Res> extends _$TicketCopyWithImpl<$Res>
    implements _$TicketCopyWith<$Res> {
  __$TicketCopyWithImpl(_Ticket _value, $Res Function(_Ticket) _then)
      : super(_value, (v) => _then(v as _Ticket));

  @override
  _Ticket get _value => super._value as _Ticket;

  @override
  $Res call({
    Object? giverPublicCodeID = freezed,
    Object? contactPerson = freezed,
    Object? contactPhoneNumber = freezed,
    Object? males = freezed,
    Object? females = freezed,
    Object? children = freezed,
    Object? animals = freezed,
    Object? haveTransport = freezed,
    Object? helpType = freezed,
    Object? askingText = freezed,
  }) {
    return _then(_Ticket(
      giverPublicCodeID: giverPublicCodeID == freezed
          ? _value.giverPublicCodeID
          : giverPublicCodeID // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: contactPerson == freezed
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhoneNumber: contactPhoneNumber == freezed
          ? _value.contactPhoneNumber
          : contactPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      males: males == freezed
          ? _value.males
          : males // ignore: cast_nullable_to_non_nullable
              as int?,
      females: females == freezed
          ? _value.females
          : females // ignore: cast_nullable_to_non_nullable
              as int?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
      animals: animals == freezed
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as int?,
      haveTransport: haveTransport == freezed
          ? _value.haveTransport
          : haveTransport // ignore: cast_nullable_to_non_nullable
              as bool?,
      helpType: helpType == freezed
          ? _value.helpType
          : helpType // ignore: cast_nullable_to_non_nullable
              as int?,
      askingText: askingText == freezed
          ? _value.askingText
          : askingText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ticket implements _Ticket {
  _$_Ticket(
      {@JsonKey(name: 'giverPublicCodeID') this.giverPublicCodeID,
      @JsonKey(name: 'contactPerson') this.contactPerson,
      @JsonKey(name: 'contactPhoneNumber') this.contactPhoneNumber,
      @JsonKey(name: 'males') this.males,
      @JsonKey(name: 'females') this.females,
      @JsonKey(name: 'children') this.children,
      @JsonKey(name: 'animals') this.animals,
      @JsonKey(name: 'haveTransport') this.haveTransport,
      @JsonKey(name: 'helpType') this.helpType,
      @JsonKey(name: 'askingText') this.askingText});

  factory _$_Ticket.fromJson(Map<String, dynamic> json) =>
      _$$_TicketFromJson(json);

  @override
  @JsonKey(name: 'giverPublicCodeID')
  final String? giverPublicCodeID;
  @override
  @JsonKey(name: 'contactPerson')
  final String? contactPerson;
  @override
  @JsonKey(name: 'contactPhoneNumber')
  final String? contactPhoneNumber;
  @override
  @JsonKey(name: 'males')
  final int? males;
  @override
  @JsonKey(name: 'females')
  final int? females;
  @override
  @JsonKey(name: 'children')
  final int? children;
  @override
  @JsonKey(name: 'animals')
  final int? animals;
  @override
  @JsonKey(name: 'haveTransport')
  final bool? haveTransport;
  @override
  @JsonKey(name: 'helpType')
  final int? helpType;
  @override
  @JsonKey(name: 'askingText')
  final String? askingText;

  @override
  String toString() {
    return 'Ticket(giverPublicCodeID: $giverPublicCodeID, contactPerson: $contactPerson, contactPhoneNumber: $contactPhoneNumber, males: $males, females: $females, children: $children, animals: $animals, haveTransport: $haveTransport, helpType: $helpType, askingText: $askingText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ticket &&
            const DeepCollectionEquality()
                .equals(other.giverPublicCodeID, giverPublicCodeID) &&
            const DeepCollectionEquality()
                .equals(other.contactPerson, contactPerson) &&
            const DeepCollectionEquality()
                .equals(other.contactPhoneNumber, contactPhoneNumber) &&
            const DeepCollectionEquality().equals(other.males, males) &&
            const DeepCollectionEquality().equals(other.females, females) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            const DeepCollectionEquality().equals(other.animals, animals) &&
            const DeepCollectionEquality()
                .equals(other.haveTransport, haveTransport) &&
            const DeepCollectionEquality().equals(other.helpType, helpType) &&
            const DeepCollectionEquality()
                .equals(other.askingText, askingText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(giverPublicCodeID),
      const DeepCollectionEquality().hash(contactPerson),
      const DeepCollectionEquality().hash(contactPhoneNumber),
      const DeepCollectionEquality().hash(males),
      const DeepCollectionEquality().hash(females),
      const DeepCollectionEquality().hash(children),
      const DeepCollectionEquality().hash(animals),
      const DeepCollectionEquality().hash(haveTransport),
      const DeepCollectionEquality().hash(helpType),
      const DeepCollectionEquality().hash(askingText));

  @JsonKey(ignore: true)
  @override
  _$TicketCopyWith<_Ticket> get copyWith =>
      __$TicketCopyWithImpl<_Ticket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketToJson(this);
  }
}

abstract class _Ticket implements Ticket {
  factory _Ticket(
      {@JsonKey(name: 'giverPublicCodeID') String? giverPublicCodeID,
      @JsonKey(name: 'contactPerson') String? contactPerson,
      @JsonKey(name: 'contactPhoneNumber') String? contactPhoneNumber,
      @JsonKey(name: 'males') int? males,
      @JsonKey(name: 'females') int? females,
      @JsonKey(name: 'children') int? children,
      @JsonKey(name: 'animals') int? animals,
      @JsonKey(name: 'haveTransport') bool? haveTransport,
      @JsonKey(name: 'helpType') int? helpType,
      @JsonKey(name: 'askingText') String? askingText}) = _$_Ticket;

  factory _Ticket.fromJson(Map<String, dynamic> json) = _$_Ticket.fromJson;

  @override
  @JsonKey(name: 'giverPublicCodeID')
  String? get giverPublicCodeID;
  @override
  @JsonKey(name: 'contactPerson')
  String? get contactPerson;
  @override
  @JsonKey(name: 'contactPhoneNumber')
  String? get contactPhoneNumber;
  @override
  @JsonKey(name: 'males')
  int? get males;
  @override
  @JsonKey(name: 'females')
  int? get females;
  @override
  @JsonKey(name: 'children')
  int? get children;
  @override
  @JsonKey(name: 'animals')
  int? get animals;
  @override
  @JsonKey(name: 'haveTransport')
  bool? get haveTransport;
  @override
  @JsonKey(name: 'helpType')
  int? get helpType;
  @override
  @JsonKey(name: 'askingText')
  String? get askingText;
  @override
  @JsonKey(ignore: true)
  _$TicketCopyWith<_Ticket> get copyWith => throw _privateConstructorUsedError;
}

TicketRequestBody _$TicketRequestBodyFromJson(Map<String, dynamic> json) {
  return _TicketRequestBody.fromJson(json);
}

/// @nodoc
class _$TicketRequestBodyTearOff {
  const _$TicketRequestBodyTearOff();

  _TicketRequestBody call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'Password') String? password,
      @JsonKey(name: 'GiverPublicCodeID') String? giverPublicCodeID}) {
    return _TicketRequestBody(
      token: token,
      phoneNumber: phoneNumber,
      password: password,
      giverPublicCodeID: giverPublicCodeID,
    );
  }

  TicketRequestBody fromJson(Map<String, Object?> json) {
    return TicketRequestBody.fromJson(json);
  }
}

/// @nodoc
const $TicketRequestBody = _$TicketRequestBodyTearOff();

/// @nodoc
mixin _$TicketRequestBody {
  @JsonKey(name: 'ApiToken')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'PhoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'Password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'GiverPublicCodeID')
  String? get giverPublicCodeID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketRequestBodyCopyWith<TicketRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketRequestBodyCopyWith<$Res> {
  factory $TicketRequestBodyCopyWith(
          TicketRequestBody value, $Res Function(TicketRequestBody) then) =
      _$TicketRequestBodyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'Password') String? password,
      @JsonKey(name: 'GiverPublicCodeID') String? giverPublicCodeID});
}

/// @nodoc
class _$TicketRequestBodyCopyWithImpl<$Res>
    implements $TicketRequestBodyCopyWith<$Res> {
  _$TicketRequestBodyCopyWithImpl(this._value, this._then);

  final TicketRequestBody _value;
  // ignore: unused_field
  final $Res Function(TicketRequestBody) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? giverPublicCodeID = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      giverPublicCodeID: giverPublicCodeID == freezed
          ? _value.giverPublicCodeID
          : giverPublicCodeID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TicketRequestBodyCopyWith<$Res>
    implements $TicketRequestBodyCopyWith<$Res> {
  factory _$TicketRequestBodyCopyWith(
          _TicketRequestBody value, $Res Function(_TicketRequestBody) then) =
      __$TicketRequestBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ApiToken') String? token,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'Password') String? password,
      @JsonKey(name: 'GiverPublicCodeID') String? giverPublicCodeID});
}

/// @nodoc
class __$TicketRequestBodyCopyWithImpl<$Res>
    extends _$TicketRequestBodyCopyWithImpl<$Res>
    implements _$TicketRequestBodyCopyWith<$Res> {
  __$TicketRequestBodyCopyWithImpl(
      _TicketRequestBody _value, $Res Function(_TicketRequestBody) _then)
      : super(_value, (v) => _then(v as _TicketRequestBody));

  @override
  _TicketRequestBody get _value => super._value as _TicketRequestBody;

  @override
  $Res call({
    Object? token = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? giverPublicCodeID = freezed,
  }) {
    return _then(_TicketRequestBody(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      giverPublicCodeID: giverPublicCodeID == freezed
          ? _value.giverPublicCodeID
          : giverPublicCodeID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketRequestBody implements _TicketRequestBody {
  _$_TicketRequestBody(
      {@JsonKey(name: 'ApiToken') this.token,
      @JsonKey(name: 'PhoneNumber') this.phoneNumber,
      @JsonKey(name: 'Password') this.password,
      @JsonKey(name: 'GiverPublicCodeID') this.giverPublicCodeID});

  factory _$_TicketRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_TicketRequestBodyFromJson(json);

  @override
  @JsonKey(name: 'ApiToken')
  final String? token;
  @override
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'Password')
  final String? password;
  @override
  @JsonKey(name: 'GiverPublicCodeID')
  final String? giverPublicCodeID;

  @override
  String toString() {
    return 'TicketRequestBody(token: $token, phoneNumber: $phoneNumber, password: $password, giverPublicCodeID: $giverPublicCodeID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TicketRequestBody &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.giverPublicCodeID, giverPublicCodeID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(giverPublicCodeID));

  @JsonKey(ignore: true)
  @override
  _$TicketRequestBodyCopyWith<_TicketRequestBody> get copyWith =>
      __$TicketRequestBodyCopyWithImpl<_TicketRequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketRequestBodyToJson(this);
  }
}

abstract class _TicketRequestBody implements TicketRequestBody {
  factory _TicketRequestBody(
          {@JsonKey(name: 'ApiToken') String? token,
          @JsonKey(name: 'PhoneNumber') String? phoneNumber,
          @JsonKey(name: 'Password') String? password,
          @JsonKey(name: 'GiverPublicCodeID') String? giverPublicCodeID}) =
      _$_TicketRequestBody;

  factory _TicketRequestBody.fromJson(Map<String, dynamic> json) =
      _$_TicketRequestBody.fromJson;

  @override
  @JsonKey(name: 'ApiToken')
  String? get token;
  @override
  @JsonKey(name: 'PhoneNumber')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'Password')
  String? get password;
  @override
  @JsonKey(name: 'GiverPublicCodeID')
  String? get giverPublicCodeID;
  @override
  @JsonKey(ignore: true)
  _$TicketRequestBodyCopyWith<_TicketRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
