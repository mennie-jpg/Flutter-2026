
import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';


@JsonSerializable()
class PostModel {
    String title;
    String content;
    String id;

    PostModel({
        required this.title,
        required this.content,
        required this.id,
    });

    factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

    Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
