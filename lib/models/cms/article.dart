import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  @JsonSerializable(explicitToJson: true)
  const factory Article({
    String? articleUrl,
    String? imageUrl,
    String? description,
    String? articleTitle,
  }) = _Article;
  const Article._();

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}
