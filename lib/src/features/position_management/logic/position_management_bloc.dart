import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Position/position.dart';
import 'package:mgr_frontend/src/datasource/repositories/position_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'position_management_bloc.freezed.dart';
part 'position_management_event.dart';
part 'position_management_state.dart';

class PositionManagementBloc
    extends Bloc<PositionManagementEvent, PositionManagementState> {
  final PositionRepository _positionRepository;

  PositionManagementBloc({PositionRepository? positionRepository})
      : _positionRepository =
            positionRepository ?? locator<PositionRepository>(),
        super(PositionManagementState.initial()) {
    on<_InitPositions>((event, emit) async {
      final response = await _positionRepository.getPositions();
      response.when(
          success: (data) {
            emit(state.copyWith(positions: data));
          },
          error: (err) {});
    });
    on<_AddPosition>((event, emit) async {
      final response = await _positionRepository.addPosition(event.position);
      response.when(
          success: (data) {
            final updatedPositions = List<Position>.from(state.positions)
              ..add(data);
            emit(state.copyWith(positions: updatedPositions));
          },
          error: (err) {});
    });
    on<_RemovePosition>((event, emit) async {
      final response =
          await _positionRepository.deletePosition(event.position.id);
      response.when(
          success: (data) {
            final updatedPositions = List<Position>.from(state.positions)
              ..remove(event.position);
            emit(state.copyWith(positions: updatedPositions));
          },
          error: (err) {});
    });
    on<_UpdatePosition>((event, emit) async {
      final response = await _positionRepository.updatePosition(
          event.oldPosition.id, event.newPosition);
      response.when(
          success: (data) {
            final updatedPositions = state.positions.map((position) {
              return position == event.oldPosition
                  ? event.newPosition
                  : position;
            }).toList();
            emit(state.copyWith(positions: updatedPositions));
          },
          error: (err) {});
    });

    add(_InitPositions());
  }
}
