import 'package:dio/dio.dart';
import '../models/leaderboard_model.dart';

class RemoteDataSource {
  final dio = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));

  Future<DataMentee> getLeaderboard() async {
    final response = await dio.get('/users');
    return DataMentee.fromJson(response.data);
  }
}
