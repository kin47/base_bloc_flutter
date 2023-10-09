import 'package:base_bloc_3/features/order/data/datasource/order_data_source.dart';
import 'package:base_bloc_3/features/order/data/datasource/service/order_service.dart';
import 'package:base_bloc_3/features/order/data/model/bubble_tea/bubble_tea.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrderDataSource)
class OrderDataSourceImpl implements OrderDataSource {
  OrderDataSourceImpl(this._service);

  final OrderService _service;

  @override
  Future<List<BubbleTea>> getData({required int offset}) async {
    final List<BubbleTea> result = await _service.getBubbleTea(offset: offset);
    return result;
  }
}
