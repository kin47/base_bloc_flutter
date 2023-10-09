// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bubble_tea.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BubbleTea _$$_BubbleTeaFromJson(Map<String, dynamic> json) => _$_BubbleTea(
      name: json['login'] as String?,
      description: json['url'] as String?,
      image: json['avatar_url'] as String?,
      price: json['id'] as int?,
      bestSeller: json['site_admin'] as bool?,
    );

Map<String, dynamic> _$$_BubbleTeaToJson(_$_BubbleTea instance) =>
    <String, dynamic>{
      'login': instance.name,
      'url': instance.description,
      'avatar_url': instance.image,
      'id': instance.price,
      'site_admin': instance.bestSeller,
    };
