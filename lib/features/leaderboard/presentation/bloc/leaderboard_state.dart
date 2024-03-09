part of 'leaderboard_bloc.dart';

@immutable
sealed class LeaderboardState {}

final class LeaderboardInitial extends LeaderboardState {}

final class LeaderboardLoading extends LeaderboardState {}

final class LeaderboardSuccess extends LeaderboardState {
  final List<LeaderboardModel> leaderboardData;
  LeaderboardSuccess(this.leaderboardData);
}

final class LeaderboardError extends LeaderboardState {
  final String error;
  LeaderboardError(this.error);
}
