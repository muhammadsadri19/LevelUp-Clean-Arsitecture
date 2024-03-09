import 'package:dio/dio.dart';
import '../models/leaderboard.dart';

class LeaderboardDataSource {
  final dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));

  Future<Leaderboard> getDataUser() async {
    final response = await dio.get('/users');
    return Leaderboard.fromModel(response.data);
  }
}
