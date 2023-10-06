// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bubble_tea.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BubbleTea _$$_BubbleTeaFromJson(Map<String, dynamic> json) => _$_BubbleTea(
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      price: json['price'] as int?,
      bestSeller: json['bestSeller'] as bool?,
    );

Map<String, dynamic> _$$_BubbleTeaToJson(_$_BubbleTea instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'bestSeller': instance.bestSeller,
    };
