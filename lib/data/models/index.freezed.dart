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

Notifications _$NotificationsFromJson(Map<String, dynamic> json) {
  return _Notifications.fromJson(json);
}

/// @nodoc
class _$NotificationsTearOff {
  const _$NotificationsTearOff();

  _Notifications call(
      {@JsonKey(name: 'id', defaultValue: 0) int id = 0,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'description') String? descriptions,
      @JsonKey(name: 'status') String? status}) {
    return _Notifications(
      id: id,
      type: type,
      descriptions: descriptions,
      status: status,
    );
  }

  Notifications fromJson(Map<String, Object?> json) {
    return Notifications.fromJson(json);
  }
}

/// @nodoc
const $Notifications = _$NotificationsTearOff();

/// @nodoc
mixin _$Notifications {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get descriptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsCopyWith<Notifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsCopyWith<$Res> {
  factory $NotificationsCopyWith(
          Notifications value, $Res Function(Notifications) then) =
      _$NotificationsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'description') String? descriptions,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$NotificationsCopyWithImpl<$Res>
    implements $NotificationsCopyWith<$Res> {
  _$NotificationsCopyWithImpl(this._value, this._then);

  final Notifications _value;
  // ignore: unused_field
  final $Res Function(Notifications) _then;

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
abstract class _$NotificationsCopyWith<$Res>
    implements $NotificationsCopyWith<$Res> {
  factory _$NotificationsCopyWith(
          _Notifications value, $Res Function(_Notifications) then) =
      __$NotificationsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'description') String? descriptions,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$NotificationsCopyWithImpl<$Res>
    extends _$NotificationsCopyWithImpl<$Res>
    implements _$NotificationsCopyWith<$Res> {
  __$NotificationsCopyWithImpl(
      _Notifications _value, $Res Function(_Notifications) _then)
      : super(_value, (v) => _then(v as _Notifications));

  @override
  _Notifications get _value => super._value as _Notifications;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? descriptions = freezed,
    Object? status = freezed,
  }) {
    return _then(_Notifications(
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
class _$_Notifications implements _Notifications {
  _$_Notifications(
      {@JsonKey(name: 'id', defaultValue: 0) this.id = 0,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'description') this.descriptions,
      @JsonKey(name: 'status') this.status});

  factory _$_Notifications.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationsFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
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
    return 'Notifications(id: $id, type: $type, descriptions: $descriptions, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Notifications &&
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
  _$NotificationsCopyWith<_Notifications> get copyWith =>
      __$NotificationsCopyWithImpl<_Notifications>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationsToJson(this);
  }
}

abstract class _Notifications implements Notifications {
  factory _Notifications(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'description') String? descriptions,
      @JsonKey(name: 'status') String? status}) = _$_Notifications;

  factory _Notifications.fromJson(Map<String, dynamic> json) =
      _$_Notifications.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
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
  _$NotificationsCopyWith<_Notifications> get copyWith =>
      throw _privateConstructorUsedError;
}
