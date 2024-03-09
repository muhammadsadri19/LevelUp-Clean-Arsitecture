import 'package:bloc/bloc.dart';
import 'package:levelup/features/leaderboard/data/datasources/remote_datasource.dart';
import 'package:levelup/features/leaderboard/data/models/leaderboard_model.dart';
import 'package:meta/meta.dart';

part 'leaderboard_event.dart';
part 'leaderboard_state.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final RemoteDataSource remoteDataSource;
  LeaderboardBloc({required this.remoteDataSource})
      : super(LeaderboardInitial()) {
    on<LoadLeaderboard>((event, emit) async {
      emit(LeaderboardLoading());
      try {
        final result = await remoteDataSource.getLeaderboard();
        emit(LeaderboardSuccess(result.data));
      } catch (e) {
        emit(LeaderboardError(e.toString()));
      }
    });
  }
}
