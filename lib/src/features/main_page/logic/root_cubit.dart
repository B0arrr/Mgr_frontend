import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/datasource/repositories/login_repository.dart';

class RootCubit extends Cubit<void> {
  RootCubit({LoginRepository? loginRepository}) : super(null);
}
