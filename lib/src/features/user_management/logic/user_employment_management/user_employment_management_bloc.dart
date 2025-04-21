import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Company/company.dart';
import 'package:mgr_frontend/src/datasource/models/Department/department.dart';
import 'package:mgr_frontend/src/datasource/models/Employment/employment.dart';
import 'package:mgr_frontend/src/datasource/models/Position/position.dart';
import 'package:mgr_frontend/src/datasource/models/UserEmployment/user_employment.dart';
import 'package:mgr_frontend/src/datasource/repositories/company_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/department_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/employment_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/position_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_employment_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'user_employment_management_bloc.freezed.dart';
part 'user_employment_management_event.dart';
part 'user_employment_management_state.dart';

class UserEmploymentManagementBloc
    extends Bloc<UserEmploymentManagementEvent, UserEmploymentManagementState> {
  final UserEmploymentRepository _userEmploymentRepository;
  final EmploymentRepository _employmentRepository;
  final CompanyRepository _companyRepository;
  final DepartmentRepository _departmentRepository;
  final PositionRepository _positionRepository;

  UserEmploymentManagementBloc({
    UserEmploymentRepository? userEmploymentRepository,
    EmploymentRepository? employmentRepository,
    CompanyRepository? companyRepository,
    DepartmentRepository? departmentRepository,
    PositionRepository? positionRepository,
    required int userId,
  })  : _userEmploymentRepository =
            userEmploymentRepository ?? locator<UserEmploymentRepository>(),
        _employmentRepository =
            employmentRepository ?? locator<EmploymentRepository>(),
        _companyRepository = companyRepository ?? locator<CompanyRepository>(),
        _departmentRepository =
            departmentRepository ?? locator<DepartmentRepository>(),
        _positionRepository =
            positionRepository ?? locator<PositionRepository>(),
        super(UserEmploymentManagementState.initial(userId)) {
    on<_InitUserEmployment>((event, emit) async {
      final response = await _userEmploymentRepository.getUserEmployments();
      response.when(
          success: (data) {
            data.removeWhere(
                (userEmployment) => userEmployment.user_id != state.userId);
            emit(state.copyWith(userEmployments: data, userId: event.userId));
          },
          error: (err) {});
    });
    on<_AddUserEmployment>((event, emit) async {
      final response = await _userEmploymentRepository
          .addUserEmployment(event.userEmployment);
      response.when(
          success: (data) {
            final updatedUserEmployments =
                List<UserEmployment>.from(state.userEmployments)..add(data);
            emit(state.copyWith(userEmployments: updatedUserEmployments));
          },
          error: (err) {});
    });
    on<_RemoveUserEmployment>((event, emit) async {
      final response = await _userEmploymentRepository
          .deleteUserEmployment(event.userEmployment.id);
      response.when(
          success: (data) {
            final updatedUserEmployments =
                List<UserEmployment>.from(state.userEmployments)
                  ..remove(event.userEmployment);
            emit(state.copyWith(userEmployments: updatedUserEmployments));
          },
          error: (err) {});
    });
    on<_UpdateUserEmployment>((event, emit) async {
      final response = await _userEmploymentRepository.updateUserEmployment(
          event.oldUserEmployment.id, event.newUserEmployment);
      response.when(
          success: (data) {
            final updatedUserEmployments =
                state.userEmployments.map((userEmployment) {
              return userEmployment == event.oldUserEmployment
                  ? event.newUserEmployment
                  : userEmployment;
            }).toList();
            emit(state.copyWith(userEmployments: updatedUserEmployments));
          },
          error: (err) {});
    });

    add(_InitUserEmployment(state.userId));
  }

  Future<List<UserEmployment>> getUserEmploymentList() async {
    List<UserEmployment> userEmployments = [];
    final response = await _userEmploymentRepository.getUserEmployments();
    response.when(
        success: (data) {
          userEmployments = data;
        },
        error: (err) {});
    return userEmployments;
  }

  Future<List<Employment>> getEmploymentList() async {
    List<Employment> employments = [];
    final response = await _employmentRepository.getEmployments();
    response.when(
        success: (data) {
          employments = data;
        },
        error: (err) {});
    return employments;
  }

  Future<List<Company>> getCompanyList() async {
    List<Company> companies = [];
    final response = await _companyRepository.getCompanies();
    response.when(
        success: (data) {
          companies = data;
        },
        error: (err) {});
    return companies;
  }

  Future<List<Department>> getDepartmentList() async {
    List<Department> departments = [];
    final response = await _departmentRepository.getDepartments();
    response.when(
        success: (data) {
          departments = data;
        },
        error: (err) {});
    return departments;
  }

  Future<List<Position>> getPositionList() async {
    List<Position> positions = [];
    final response = await _positionRepository.getPositions();
    response.when(
        success: (data) {
          positions = data;
        },
        error: (err) {});
    return positions;
  }

  Future<Employment?> getEmployment(int id) async {
    Employment? employment;
    final response = await _employmentRepository.getEmployment(id);
    response.when(
        success: (data) {
          employment = data;
        },
        error: (err) {});
    return employment;
  }

  Future<Company?> getCompany(int id) async {
    Company? company;
    final response = await _companyRepository.getCompany(id);
    response.when(
        success: (data) {
          company = data;
        },
        error: (err) {});
    return company;
  }

  Future<Department?> getDepartment(int id) async {
    Department? department;
    final response = await _departmentRepository.getDepartment(id);
    response.when(
        success: (data) {
          department = data;
        },
        error: (err) {});
    return department;
  }

  Future<Position?> getPosition(int id) async {
    Position? position;
    final response = await _positionRepository.getPosition(id);
    response.when(
        success: (data) {
          position = data;
        },
        error: (err) {});
    return position;
  }
}
