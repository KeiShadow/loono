// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String? get categoryTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'articles')
  List<Article>? get articles => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {String? categoryTitle,
      @JsonKey(name: 'articles') List<Article>? articles,
      String? error});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? categoryTitle = freezed,
    Object? articles = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      categoryTitle: categoryTitle == freezed
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? categoryTitle,
      @JsonKey(name: 'articles') List<Article>? articles,
      String? error});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, (v) => _then(v as _$_Category));

  @override
  _$_Category get _value => super._value as _$_Category;

  @override
  $Res call({
    Object? categoryTitle = freezed,
    Object? articles = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Category(
      categoryTitle: categoryTitle == freezed
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      articles: articles == freezed
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Category extends _Category {
  const _$_Category(
      {this.categoryTitle,
      @JsonKey(name: 'articles') final List<Article>? articles,
      this.error})
      : _articles = articles,
        super._();

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String? categoryTitle;
  final List<Article>? _articles;
  @override
  @JsonKey(name: 'articles')
  List<Article>? get articles {
    final value = _articles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'Category(categoryTitle: $categoryTitle, articles: $articles, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            const DeepCollectionEquality()
                .equals(other.categoryTitle, categoryTitle) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryTitle),
      const DeepCollectionEquality().hash(_articles),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(this);
  }
}

abstract class _Category extends Category {
  const factory _Category(
      {final String? categoryTitle,
      @JsonKey(name: 'articles') final List<Article>? articles,
      final String? error}) = _$_Category;
  const _Category._() : super._();

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String? get categoryTitle;
  @override
  @JsonKey(name: 'articles')
  List<Article>? get articles;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}
