import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:loono/models/cms/category.dart';

class CmsProvider {
  final Dio _dio = Dio();

  final String filesUrl = 'https://www.loono.cz/files';

  Future<List<Category>?> fetchAboutHeathCategory() async {
    final categories = <Category>[];
    try {
      final responseData = await _dio.get<String>('$filesUrl/abouthealth.txt');
      if (responseData.statusCode == 200) {
        final dynamic data = jsonDecode(responseData.data!);
        for (final Map<String, dynamic> item in data) {
          categories.add(Category.fromJson(item));
        }

        return categories;
      }
    } catch (e, stackTrace) {
      print('Exception occured: $e stackTrace $stackTrace');
      categories.add(const Category(error: 'Data not found / Connection issue'));
      return categories;
    }
    return null;
  }
}
