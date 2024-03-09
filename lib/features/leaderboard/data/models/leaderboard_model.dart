class DataMentee {
  final List<LeaderboardModel> data;
  DataMentee({required this.data});

  factory DataMentee.fromJson(Map<String, dynamic> json) => DataMentee(
      data: List.from(
          json['data'].map((mentee) => LeaderboardModel.fromModel(mentee))));
}

class LeaderboardModel {
  LeaderboardModel({
    required this.id,
    required this.email,
    required this.firstname,
    required this.lastname,
  });

  final int id;
  final String email;
  final String firstname;
  final String lastname;

  factory LeaderboardModel.fromModel(Map<String, dynamic> json) =>
      LeaderboardModel(
          id: json['id'],
          email: json['email'],
          firstname: json['first_name'],
          lastname: json['last_name']);
}
