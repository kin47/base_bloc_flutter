import 'package:base_bloc_3/features/core/data/model/base_data.dart';
import 'package:base_bloc_3/features/core/data/remote/service/core_service.dart';
import 'package:base_bloc_3/features/core/data/remote/source/data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DataSource)
class DataSourceImpl implements DataSource {
  DataSourceImpl(this._service);

  final CoreService _service;

  @override
  Future<BaseModel> getData(String param) {
    return _service.getData(param: param);
  }
}
