import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_data.freezed.dart';
part 'base_data.g.dart';

@freezed
class BaseModel with _$BaseModel {
  const factory BaseModel({
    final String? attribute,
  }) = _BaseModel;

  factory BaseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseModelFromJson(json);
}
