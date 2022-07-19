import 'package:loono/models/cms/category.dart';
import 'package:loono/providers/cms_provider.dart';

List<Category>? categories;

class CmsRepository {
  final _provider = CmsProvider();

  Future<List<Category?>?> fetchAboutHeathCategoriesPage() {
    return _provider.fetchAboutHeathCategory();
  }
}
