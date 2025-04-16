import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/Position/position.dart';

class PositionApi {
  final Dio dio;

  PositionApi({required this.dio});

  Future<List<Position>> getPositions() async {
    final response = await dio.get('/position');
    return (response.data as List)
        .map((json) => Position.fromJson(json))
        .toList();
  }

  Future<Position> getPosition(int id) async {
    final response = await dio.get('/position/$id');
    return Position.fromJson(response.data);
  }

  Future<Position> addPosition(Position position) async {
    final response = await dio.post('/position', data: position);
    return Position.fromJson(response.data);
  }

  Future<Position> updatePosition(int id, Position position) async {
    final response = await dio.put('/position/$id', data: position);
    return Position.fromJson(response.data);
  }

  Future<void> deletePosition(int id) async {
    await dio.delete('/position/$id');
  }
}
