import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loono/Blocs/rest_api_event.dart';
import 'package:loono/Blocs/rest_api_state.dart';
import 'package:loono/repositories/cms_repository.dart';
import 'package:loono/utils/image_utils.dart';

class RestApiBloc extends Bloc<RestApiEvent, RestApiState> {
  RestApiBloc() : super(const RestApiState.loading()) {
    //TODO: CMS Provider like api_service
    //final apiService = ApiService(api: LoonoApi(dio: Dio()));
    final cmsRepository = CmsRepository();
    on<AboutHealthCategories>(
      ((event, emit) async {
        try {
          emit(const RestApiState.loading());
          final categoryList = await cmsRepository.fetchAboutHeathCategoriesPage();
          emit(RestApiState.fetchAboutHealthState(categoryList));
          if (categoryList?.first?.error != null) {
            emit(RestApiState.error(categoryList?.first?.error));
          }
        } on NetworkError {
          emit(const RestApiState.error('Fetching data error'));
        }
      }),
    );
  }
}
