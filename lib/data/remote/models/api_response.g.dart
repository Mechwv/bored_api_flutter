// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => ApiResponse(
      json['activity'] as String,
      (json['accessibility'] as num).toDouble(),
      json['type'] as String,
      json['participants'] as int,
      (json['price'] as num).toDouble(),
      json['link'] as String,
      json['key'] as String,
    );

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'activity': instance.activity,
      'accessibility': instance.accessibility,
      'type': instance.type,
      'participants': instance.participants,
      'price': instance.price,
      'link': instance.link,
      'key': instance.key,
    };
