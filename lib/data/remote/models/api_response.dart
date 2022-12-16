import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  final String activity;
  final double accessibility;
  final String type;
  final int participants;
  final double price;
  final String? link;
  final String? key;

  ApiResponse(this.activity, this.accessibility, this.type, this.participants,
      this.price, this.link, this.key);

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
