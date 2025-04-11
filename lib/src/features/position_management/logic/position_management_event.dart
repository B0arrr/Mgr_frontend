part of 'position_management_bloc.dart';

@freezed
class PositionManagementEvent with _$PositionManagementEvent {
  const factory PositionManagementEvent.initPositions() = _InitPositions;

  const factory PositionManagementEvent.addPosition(Position position) =
      _AddPosition;

  const factory PositionManagementEvent.removePosition(Position position) =
      _RemovePosition;

  const factory PositionManagementEvent.updatePosition({
    required Position oldPosition,
    required Position newPosition,
  }) = _UpdatePosition;
}
