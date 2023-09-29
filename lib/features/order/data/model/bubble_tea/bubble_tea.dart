import 'package:base_bloc_3/features/order/domain/entity/bubble_tea_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bubble_tea.freezed.dart';
part 'bubble_tea.g.dart';

@freezed
class BubbleTea extends BubbleTeaEntity with _$BubbleTea {
  const factory BubbleTea({
    final String? name,
    final String? description,
    final String? image,
    final int? price,
    final bool? bestSeller,
  }) = _BubbleTea;

  factory BubbleTea.fromJson(Map<String, dynamic> json) =>
      _$BubbleTeaFromJson(json);
}
