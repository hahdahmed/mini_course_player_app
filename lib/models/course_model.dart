class CourseModel {
  final String id;
  final String title;
  final String description;
  final String thumbnailUrl;
  final int durationSeconds;
  final String videoUrl;

  CourseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.durationSeconds,
    required this.videoUrl,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      thumbnailUrl: json['thumbnailUrl'],
      durationSeconds: json['durationSeconds'],
      videoUrl: json['videoUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'thumbnailUrl': thumbnailUrl,
      'description': description,
      'durationSeconds': durationSeconds,
      'videoUrl': videoUrl,
    };
  }
}
