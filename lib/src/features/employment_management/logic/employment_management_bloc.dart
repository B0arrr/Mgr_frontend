import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Employment/employment.dart';
import 'package:mgr_frontend/src/datasource/repositories/employment_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'employment_management_bloc.freezed.dart';
part 'employment_management_event.dart';
part 'employment_management_state.dart';

class EmploymentManagementBloc
    extends Bloc<EmploymentManagementEvent, EmploymentManagementState> {
  final EmploymentRepository _employmentRepository;

  EmploymentManagementBloc({EmploymentRepository? employmentRepository})
      : _employmentRepository =
            employmentRepository ?? locator<EmploymentRepository>(),
        super(EmploymentManagementState.initial()) {
    on<_InitEmployments>((event, emit) async {
      final response = await _employmentRepository.getEmployments();
      response.when(
          success: (data) {
            emit(state.copyWith(employments: data));
          },
          error: (err) {});
    });
    on<_AddEmployment>((event, emit) async {
      final response =
          await _employmentRepository.addEmployment(event.employment);
      response.when(
          success: (data) {
            final updatedEmployments = List<Employment>.from(state.employments)
              ..add(data);
            emit(state.copyWith(employments: updatedEmployments));
          },
          error: (err) {});
    });
    on<_RemoveEmployment>((event, emit) async {
      final response =
          await _employmentRepository.deleteEmployment(event.employment.id);
      response.when(
          success: (data) {
            final updatedEmployments = List<Employment>.from(state.employments)
              ..remove(event.employment);
            emit(state.copyWith(employments: updatedEmployments));
          },
          error: (err) {});
    });
    on<_UpdateEmployment>((event, emit) async {
      final response = await _employmentRepository.updateEmployment(
          event.oldEmployment.id, event.newEmployment);
      response.when(
          success: (data) {
            final updatedEmployments = state.employments.map((employment) {
              return employment == event.oldEmployment
                  ? event.newEmployment
                  : employment;
            }).toList();
            emit(state.copyWith(employments: updatedEmployments));
          },
          error: (err) {});
    });

    add(_InitEmployments());
  }
}
