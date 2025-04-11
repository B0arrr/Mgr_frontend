import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Department/department.dart';
import 'package:mgr_frontend/src/datasource/repositories/department_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'department_management_bloc.freezed.dart';
part 'department_management_event.dart';
part 'department_management_state.dart';

class DepartmentManagementBloc
    extends Bloc<DepartmentManagementEvent, DepartmentManagementState> {
  final DepartmentRepository _departmentRepository;

  DepartmentManagementBloc({DepartmentRepository? departmentRepository})
      : _departmentRepository =
            departmentRepository ?? locator<DepartmentRepository>(),
        super(DepartmentManagementState.initial()) {
    on<_InitDepartments>((event, emit) async {
      final response = await _departmentRepository.getDepartments();
      response.when(
          success: (data) {
            emit(state.copyWith(departments: data));
          },
          error: (err) {});
    });
    on<_AddDepartment>((event, emit) async {
      final response =
          await _departmentRepository.addDepartment(event.department);
      response.when(
          success: (data) {
            final updatedDepartments = List<Department>.from(state.departments)
              ..add(data);
            emit(state.copyWith(departments: updatedDepartments));
          },
          error: (err) {});
    });
    on<_RemoveDepartment>((event, emit) async {
      final response =
          await _departmentRepository.deleteDepartment(event.department.id);
      response.when(
          success: (data) {
            final updatedDepartments = List<Department>.from(state.departments)
              ..remove(event.department);
            emit(state.copyWith(departments: updatedDepartments));
          },
          error: (err) {});
    });
    on<_UpdateDepartment>((event, emit) async {
      final response = await _departmentRepository.updateDepartment(
          event.oldDepartment.id, event.newDepartment);
      response.when(
          success: (data) {
            final updatedDepartments = state.departments.map((department) {
              return department == event.oldDepartment
                  ? event.newDepartment
                  : department;
            }).toList();
            emit(state.copyWith(departments: updatedDepartments));
          },
          error: (err) {});
    });

    add(_InitDepartments());
  }
}
