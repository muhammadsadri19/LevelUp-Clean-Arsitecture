part of 'leaderboard_bloc.dart';


@immutable
sealed class LeaderboardEvent {}
final class LoadLeaderboard extends LeaderboardEvent{}