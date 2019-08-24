import 'dart:convert';

LessonProgressModel lessonProgressModelFromJson(String str) => LessonProgressModel.fromJson(json.decode(str));

String lessonProgressModelToJson(LessonProgressModel data) => json.encode(data.toJson());

List<LessonProgressModel> allLessonProgressModelFromJson(dynamic jsonData) {
  final data = json.decode(jsonData);
  return List<LessonProgressModel>.from(data.map((item) => 
    LessonProgressModel.fromJson(item)));
}

class LessonProgressModel {
    String progress;
    bool finished;
    String userId;
    String lessonId;

    LessonProgressModel({
        this.progress,
        this.finished,
        this.userId,
        this.lessonId,
    });

    factory LessonProgressModel.fromJson(Map<String, dynamic> json) => new LessonProgressModel(
        progress: json["progress"],
        finished: json["finished"],
        userId: json["user_id"],
        lessonId: json["lesson_id"],
    );

    Map<String, dynamic> toJson() => {
        "progress": progress,
        "finished": finished,
        "user_id": userId,
        "lesson_id": lessonId,
    };
}