import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loono/models/cms/article.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  @JsonSerializable(explicitToJson: true)
  const factory Category({
    String? categoryTitle,
    @JsonKey(name: 'articles') List<Article>? articles,
    String? error,
  }) = _Category;

  const Category._();

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
