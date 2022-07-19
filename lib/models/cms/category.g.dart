// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      categoryTitle: json['categoryTitle'] as String?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'categoryTitle': instance.categoryTitle,
      'articles': instance.articles?.map((e) => e.toJson()).toList(),
      'error': instance.error,
    };
