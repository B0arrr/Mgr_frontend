import 'package:mgr_frontend/src/datasource/http/position_api.dart';
import 'package:mgr_frontend/src/datasource/models/Position/position.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class PositionRepository extends BaseRepository {
  final PositionApi _positionApi;

  PositionRepository({PositionApi? positionApi})
      : _positionApi = positionApi ?? locator<PositionApi>();

  Future<ApiResponse<List<Position>, ApiError>> getPositions() async {
    return runApiCall(call: () async {
      final response = await _positionApi.getPositions();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Position, ApiError>> getPosition(int id) async {
    return runApiCall(call: () async {
      final response = await _positionApi.getPosition(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Position, ApiError>> addPosition(Position position) async {
    return runApiCall(call: () async {
      final response = await _positionApi.addPosition(position);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Position, ApiError>> updatePosition(
      int id, Position position) async {
    return runApiCall(call: () async {
      final response = await _positionApi.updatePosition(id, position);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<void, ApiError>> deletePosition(int id) async {
    return runApiCall(call: () async {
      await _positionApi.deletePosition(id);
      return ApiResponse.success(null);
    });
  }
}
