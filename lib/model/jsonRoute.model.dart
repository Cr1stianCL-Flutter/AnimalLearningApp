import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class JsonRoutes {
  final String nameEnglish;
  final String nameSpanish;
  final String route;
  JsonRoutes({ this.nameEnglish,  this.nameSpanish, this.route});
  factory JsonRoutes.fromJson(Map<String, dynamic> json) => jsonRoutesFromJson(json);
  Map<String, dynamic> toJson(json) => _$RoutesFromJson(json);
}

JsonRoutes jsonRoutesFromJson(Map<String, dynamic> json) {
  return JsonRoutes(
    nameEnglish: json['nameEnglish'] as String,
    nameSpanish: json['nameSpanish'] as String,
    route: json['route'] as String 
  );
}

Map<String, dynamic> _$RoutesFromJson(JsonRoutes instance) => <String, dynamic>{
      'nameEnglish': instance.nameEnglish,
      'nameSpanish': instance.nameSpanish,
      'route': instance.route,
};

