class PostModel {
  final String title;
  final String body;
  final int userId;
  PostModel({required this.title, required this.body, required this.userId});
  Map<String, dynamic> toJson() {
    return {'title': title, 'body': body, 'userid': userId};
  }
}
