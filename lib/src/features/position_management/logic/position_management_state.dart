part of 'position_management_bloc.dart';

@freezed
class PositionManagementState with _$PositionManagementState {
  const factory PositionManagementState({required List<Position> positions}) =
      _PositionManagementState;

  factory PositionManagementState.initial() {
    return PositionManagementState(positions: []);
  }
}
