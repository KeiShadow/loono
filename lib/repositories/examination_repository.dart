import 'package:loono/helpers/examination_extensions.dart';

class ExaminationRepository {
  const ExaminationRepository();

  Future<List<ExaminationRecord>> getExaminationRecords() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return fakeExaminationData;
  }
}