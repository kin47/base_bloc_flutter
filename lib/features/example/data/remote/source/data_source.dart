import '../../model/index.dart';

abstract class DataSource {
  Future<BaseModel> getData({required double lat, required double lon});
}
