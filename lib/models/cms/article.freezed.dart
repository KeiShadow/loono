// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  String? get articleUrl => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get articleTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res>;
  $Res call(
      {String? articleUrl,
      String? imageUrl,
      String? description,
      String? articleTitle});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  final Article _value;
  // ignore: unused_field
  final $Res Function(Article) _then;

  @override
  $Res call({
    Object? articleUrl = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
    Object? articleTitle = freezed,
  }) {
    return _then(_value.copyWith(
      articleUrl: articleUrl == freezed
          ? _value.articleUrl
          : articleUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      articleTitle: articleTitle == freezed
          ? _value.articleTitle
          : articleTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$_ArticleCopyWith(
          _$_Article value, $Res Function(_$_Article) then) =
      __$$_ArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? articleUrl,
      String? imageUrl,
      String? description,
      String? articleTitle});
}

/// @nodoc
class __$$_ArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res>
    implements _$$_ArticleCopyWith<$Res> {
  __$$_ArticleCopyWithImpl(_$_Article _value, $Res Function(_$_Article) _then)
      : super(_value, (v) => _then(v as _$_Article));

  @override
  _$_Article get _value => super._value as _$_Article;

  @override
  $Res call({
    Object? articleUrl = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
    Object? articleTitle = freezed,
  }) {
    return _then(_$_Article(
      articleUrl: articleUrl == freezed
          ? _value.articleUrl
          : articleUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      articleTitle: articleTitle == freezed
          ? _value.articleTitle
          : articleTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Article extends _Article {
  const _$_Article(
      {this.articleUrl, this.imageUrl, this.description, this.articleTitle})
      : super._();

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleFromJson(json);

  @override
  final String? articleUrl;
  @override
  final String? imageUrl;
  @override
  final String? description;
  @override
  final String? articleTitle;

  @override
  String toString() {
    return 'Article(articleUrl: $articleUrl, imageUrl: $imageUrl, description: $description, articleTitle: $articleTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Article &&
            const DeepCollectionEquality()
                .equals(other.articleUrl, articleUrl) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.articleTitle, articleTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleUrl),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(articleTitle));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      __$$_ArticleCopyWithImpl<_$_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleToJson(this);
  }
}

abstract class _Article extends Article {
  const factory _Article(
      {final String? articleUrl,
      final String? imageUrl,
      final String? description,
      final String? articleTitle}) = _$_Article;
  const _Article._() : super._();

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

  @override
  String? get articleUrl;
  @override
  String? get imageUrl;
  @override
  String? get description;
  @override
  String? get articleTitle;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      throw _privateConstructorUsedError;
}
