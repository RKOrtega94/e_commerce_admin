// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDetailsImpl _$$CategoryDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDetailsImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      type: json['type'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$CategoryDetailsImplToJson(
        _$CategoryDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'type': instance.type,
      'value': instance.value,
    };
