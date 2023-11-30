import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'area_chart_model.freezed.dart';
part 'area_chart_model.g.dart';

@freezed
class AreaChartModel with _$AreaChartModel {
  const factory AreaChartModel({
    required int label,
    required double value,
  }) = _AreaChartModel;

  factory AreaChartModel.fromJson(Map<String, dynamic> json) =>
      _$AreaChartModelFromJson(json);
}
