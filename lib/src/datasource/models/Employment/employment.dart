import 'package:freezed_annotation/freezed_annotation.dart';

part 'employment.freezed.dart';
part 'employment.g.dart';

@unfreezed
class Employment with _$Employment {
  factory Employment({
    required int id,
    required String name,
    required int max_hours_per_day,
    required int max_hours_per_week,
  }) = _Employment;

  factory Employment.fromJson(Map<String, Object?> json) =>
      _$EmploymentFromJson(json);
}
