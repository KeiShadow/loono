import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loono/models/cms/category.dart';

part 'rest_api_state.freezed.dart';

@freezed
abstract class RestApiState with _$RestApiState {
  const RestApiState._();
  const factory RestApiState.loading() = LoadingState;
  const factory RestApiState.fetchAboutHealthState(List<Category?>? categories) =
      AboutHeathCategories;
  const factory RestApiState.error(String? message) = RestApiError;
}
