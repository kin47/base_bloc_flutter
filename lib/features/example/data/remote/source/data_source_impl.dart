import 'package:base_bloc_3/features/example/data/model/base_data.dart';
import 'package:base_bloc_3/features/example/data/remote/service/example_service.dart';
import 'package:base_bloc_3/features/example/data/remote/source/data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DataSource)
class DataSourceImpl implements DataSource {
  DataSourceImpl(this._service);

  final ExampleService _service;

  @override
  Future<BaseModel> getData({required double lat, required double lon}) {
    return _service.getData(lat: lat, lon: lon);
  }
}
