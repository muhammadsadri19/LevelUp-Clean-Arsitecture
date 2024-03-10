import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:levelup/features/leaderboard/data/datasources/remote_datasource.dart';
import 'package:levelup/features/leaderboard/presentation/bloc/leaderboard_bloc.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LeaderboardBloc(remoteDataSource: RemoteDataSource())
        ..add(LoadLeaderboard()),
      child: Scaffold(
        body: BlocBuilder<LeaderboardBloc, LeaderboardState>(
          builder: (context, state) {
            if (state is LeaderboardLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LeaderboardSuccess) {
              final dataLeaderboard = state.leaderboardData;
              return ListView.builder(
                  itemCount: dataLeaderboard.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                          '${dataLeaderboard[index].firstname} ${dataLeaderboard[index].firstname}'),
                      subtitle: Text(dataLeaderboard[index].email),
                    );
                  });
            } else if (state is LeaderboardError) {
              return Center(
                child: Text(state.error),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
