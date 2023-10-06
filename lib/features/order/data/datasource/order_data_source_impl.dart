import 'package:base_bloc_3/features/order/data/datasource/order_data_source.dart';
import 'package:base_bloc_3/features/order/data/model/bubble_tea/bubble_tea.dart';
import 'package:base_bloc_3/features/order/domain/entity/bubble_tea_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrderDataSource)
class OrderDataSourceImpl implements OrderDataSource {
  @override
  Future<List<BubbleTeaEntity>> getData() async {
    await Future.delayed(const Duration(seconds: 2));
    final result = [
      const BubbleTea(
        name: 'Trà sữa matcha đá xay nhầm ánh mắt của em',
        description: '1doisimpem',
        image:
        'https://www.huongnghiepaau.com/wp-content/uploads/2016/10/cach-lam-matcha-da-xay.jpg',
        price: 60000,
        bestSeller: true,
      ),
      const BubbleTea(
        name: 'Trà sữa',
        description: 'Trà sữa trân châu',
        image:
        'https://assets.epicurious.com/photos/5953ca064919e41593325d97/1:1/w_2560%2Cc_limit/bubble_tea_recipe_062817.jpg',
        price: 40000,
        bestSeller: false,
      ),
      const BubbleTea(
        name: 'Trà sữa kem cheese',
        description: 'Uống vào mập địt',
        image:
        'https://dayphache.edu.vn/wp-content/uploads/2018/06/cach-lam-kem-man-pho-mai-kem-cheese-pha-tra-sua.jpg',
        price: 65000,
        bestSeller: false,
      ),
      const BubbleTea(
        name: 'Trà sữa trứng nướng',
        description: 'Uống ngậy vcl',
        image:
        'https://www.huongnghiepaau.com/wp-content/uploads/2023/02/lop-kem-trung-chay-beo.jpg',
        price: 70000,
        bestSeller: true,
      ),
      const BubbleTea(
        name: 'Trà sữa Alley',
        description: 'Alley',
        image: 'https://assets.grab.com/wp-content/uploads/sites/11/2020/02/17001253/12-11-e1581869717293.jpg',
        price: 27000,
        bestSeller: true,
      ),
      const BubbleTea(
        name: 'Trà sữa trân châu Alley',
        description: 'Trà sữa trân châu',
        image: 'https://josdiary.files.wordpress.com/2019/07/the-alley-sua-tuoi-tran-chau-duong-den-1.jpg',
        price: 31350,
        bestSeller: false,
      ),
      const BubbleTea(
        name: 'Trà sữa kem cheese',
        description: 'Uống vào mập địt',
        image:
        'https://dayphache.edu.vn/wp-content/uploads/2018/06/cach-lam-kem-man-pho-mai-kem-cheese-pha-tra-sua.jpg',
        price: 65000,
        bestSeller: false,
      ),
      const BubbleTea(
        name: 'Trà sữa trứng nướng',
        description: 'Uống ngậy vcl',
        image:
        'https://www.huongnghiepaau.com/wp-content/uploads/2023/02/lop-kem-trung-chay-beo.jpg',
        price: 70000,
        bestSeller: true,
      ),
      const BubbleTea(
        name: 'Trà sữa trân châu đường đen',
        description: 'Đen',
        image: 'https://feelingteaonline.com/wp-content/uploads/2020/08/s%C6%B0a-tuoi-tc-%C4%91%C6%B0%E1%BB%9Dng-%C4%91en.jpg',
        price: 34200,
        bestSeller: true,
      ),
      const BubbleTea(
        name: 'Sữa tươi trân châu đường đen',
        description: 'Sữa đen',
        image: 'https://product.hstatic.net/200000140863/product/62.sua_tuoi_tran_chau_duong_den_fc61ec21aef74e6093d6916542cc9d76_1024x1024.png',
        price: 40000,
        bestSeller: false,
      ),
      const BubbleTea(
        name: 'Trà sữa kem cheese',
        description: 'Uống vào mập địt',
        image:
        'https://dayphache.edu.vn/wp-content/uploads/2018/06/cach-lam-kem-man-pho-mai-kem-cheese-pha-tra-sua.jpg',
        price: 65000,
        bestSeller: false,
      ),
      const BubbleTea(
        name: 'Trà sữa trứng nướng',
        description: 'Uống ngậy vcl',
        image:
        'https://www.huongnghiepaau.com/wp-content/uploads/2023/02/lop-kem-trung-chay-beo.jpg',
        price: 70000,
        bestSeller: true,
      ),
    ];
    return result;
  }
}