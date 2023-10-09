import 'package:base_bloc_3/features/order/domain/entity/bubble_tea_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bubble_tea.freezed.dart';
part 'bubble_tea.g.dart';

@freezed
class BubbleTea extends BubbleTeaEntity with _$BubbleTea {
  const factory BubbleTea({
    @JsonKey(name: "login") final String? name,
    @JsonKey(name: "url") final String? description,
    @JsonKey(name: "avatar_url") final String? image,
    @JsonKey(name: "id") final int? price,
    @JsonKey(name: "site_admin") final bool? bestSeller,
  }) = _BubbleTea;

  factory BubbleTea.fromJson(Map<String, dynamic> json) =>
      _$BubbleTeaFromJson(json);
}
