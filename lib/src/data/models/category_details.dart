import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'category_details.freezed.dart';
part 'category_details.g.dart';

@freezed
class CategoryDetails with _$CategoryDetails {
  const factory CategoryDetails({
    required String name,
    required String description,
    required String icon,
    required String type,
    required String value,
  }) = _CategoryDetails;

  factory CategoryDetails.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailsFromJson(json);
}
