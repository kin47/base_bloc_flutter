import '../../model/index.dart';

abstract class DataSource {
  Future<BaseModel> getData(String param);
}
