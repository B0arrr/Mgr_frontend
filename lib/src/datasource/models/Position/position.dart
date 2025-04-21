import 'package:freezed_annotation/freezed_annotation.dart';

part 'position.freezed.dart';
part 'position.g.dart';

@unfreezed
class Position with _$Position {
  factory Position({
    required int id,
    required String name,
  }) = _Position;

  factory Position.fromJson(Map<String, Object?> json) =>
      _$PositionFromJson(json);
}
