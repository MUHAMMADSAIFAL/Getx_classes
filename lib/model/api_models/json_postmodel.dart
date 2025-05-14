class Post {
  final int id;
  final String title;
  bool? completed;
  Post({required this.id, required this.title, this.completed});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json["id"],
      title: json["title"],
      completed: json["completed"],
    );
  }
}
