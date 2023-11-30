// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDetails _$CategoryDetailsFromJson(Map<String, dynamic> json) {
  return _CategoryDetails.fromJson(json);
}

/// @nodoc
mixin _$CategoryDetails {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDetailsCopyWith<CategoryDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailsCopyWith<$Res> {
  factory $CategoryDetailsCopyWith(
          CategoryDetails value, $Res Function(CategoryDetails) then) =
      _$CategoryDetailsCopyWithImpl<$Res, CategoryDetails>;
  @useResult
  $Res call(
      {String name,
      String description,
      String icon,
      String type,
      String value});
}

/// @nodoc
class _$CategoryDetailsCopyWithImpl<$Res, $Val extends CategoryDetails>
    implements $CategoryDetailsCopyWith<$Res> {
  _$CategoryDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? icon = null,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDetailsImplCopyWith<$Res>
    implements $CategoryDetailsCopyWith<$Res> {
  factory _$$CategoryDetailsImplCopyWith(_$CategoryDetailsImpl value,
          $Res Function(_$CategoryDetailsImpl) then) =
      __$$CategoryDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String icon,
      String type,
      String value});
}

/// @nodoc
class __$$CategoryDetailsImplCopyWithImpl<$Res>
    extends _$CategoryDetailsCopyWithImpl<$Res, _$CategoryDetailsImpl>
    implements _$$CategoryDetailsImplCopyWith<$Res> {
  __$$CategoryDetailsImplCopyWithImpl(
      _$CategoryDetailsImpl _value, $Res Function(_$CategoryDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? icon = null,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$CategoryDetailsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDetailsImpl
    with DiagnosticableTreeMixin
    implements _CategoryDetails {
  const _$CategoryDetailsImpl(
      {required this.name,
      required this.description,
      required this.icon,
      required this.type,
      required this.value});

  factory _$CategoryDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDetailsImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String icon;
  @override
  final String type;
  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryDetails(name: $name, description: $description, icon: $icon, type: $type, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryDetails'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDetailsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, icon, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDetailsImplCopyWith<_$CategoryDetailsImpl> get copyWith =>
      __$$CategoryDetailsImplCopyWithImpl<_$CategoryDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDetailsImplToJson(
      this,
    );
  }
}

abstract class _CategoryDetails implements CategoryDetails {
  const factory _CategoryDetails(
      {required final String name,
      required final String description,
      required final String icon,
      required final String type,
      required final String value}) = _$CategoryDetailsImpl;

  factory _CategoryDetails.fromJson(Map<String, dynamic> json) =
      _$CategoryDetailsImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get icon;
  @override
  String get type;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDetailsImplCopyWith<_$CategoryDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
