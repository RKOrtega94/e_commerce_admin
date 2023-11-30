// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AreaChartModel _$AreaChartModelFromJson(Map<String, dynamic> json) {
  return _AreaChartModel.fromJson(json);
}

/// @nodoc
mixin _$AreaChartModel {
  int get label => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaChartModelCopyWith<AreaChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaChartModelCopyWith<$Res> {
  factory $AreaChartModelCopyWith(
          AreaChartModel value, $Res Function(AreaChartModel) then) =
      _$AreaChartModelCopyWithImpl<$Res, AreaChartModel>;
  @useResult
  $Res call({int label, double value});
}

/// @nodoc
class _$AreaChartModelCopyWithImpl<$Res, $Val extends AreaChartModel>
    implements $AreaChartModelCopyWith<$Res> {
  _$AreaChartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaChartModelImplCopyWith<$Res>
    implements $AreaChartModelCopyWith<$Res> {
  factory _$$AreaChartModelImplCopyWith(_$AreaChartModelImpl value,
          $Res Function(_$AreaChartModelImpl) then) =
      __$$AreaChartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int label, double value});
}

/// @nodoc
class __$$AreaChartModelImplCopyWithImpl<$Res>
    extends _$AreaChartModelCopyWithImpl<$Res, _$AreaChartModelImpl>
    implements _$$AreaChartModelImplCopyWith<$Res> {
  __$$AreaChartModelImplCopyWithImpl(
      _$AreaChartModelImpl _value, $Res Function(_$AreaChartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_$AreaChartModelImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaChartModelImpl
    with DiagnosticableTreeMixin
    implements _AreaChartModel {
  const _$AreaChartModelImpl({required this.label, required this.value});

  factory _$AreaChartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaChartModelImplFromJson(json);

  @override
  final int label;
  @override
  final double value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AreaChartModel(label: $label, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AreaChartModel'))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaChartModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaChartModelImplCopyWith<_$AreaChartModelImpl> get copyWith =>
      __$$AreaChartModelImplCopyWithImpl<_$AreaChartModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaChartModelImplToJson(
      this,
    );
  }
}

abstract class _AreaChartModel implements AreaChartModel {
  const factory _AreaChartModel(
      {required final int label,
      required final double value}) = _$AreaChartModelImpl;

  factory _AreaChartModel.fromJson(Map<String, dynamic> json) =
      _$AreaChartModelImpl.fromJson;

  @override
  int get label;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$AreaChartModelImplCopyWith<_$AreaChartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
