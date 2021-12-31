import 'dart:convert';

ModelResultBi modelResultBiFromJson(String str) =>
    ModelResultBi.fromJson(json.decode(str));

String modelResultBiToJson(ModelResultBi data) => json.encode(data.toJson());

class ModelResultBi {
  ModelResultBi({
    this.success,
    this.message,
    this.paid,
    required this.data,
  });

  bool? success;
  String? message;
  bool? paid;
  Data data;

  factory ModelResultBi.fromJson(Map<String, dynamic> json) => ModelResultBi(
        success: json["success"],
        message: json["message"],
        paid: json["paid"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "paid": paid,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.autonomy,
    required this.innovativeness,
    required this.riskTaking,
    required this.proactiveness,
    required this.competitiveAgresiveness,
    required this.conclusion,
    required this.suggestion,
    required this.star,
  });

  String id;
  String autonomy;
  String innovativeness;
  String riskTaking;
  String proactiveness;
  String competitiveAgresiveness;
  Ion conclusion;
  Ion suggestion;
  Star star;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        autonomy: json["autonomy"],
        innovativeness: json["innovativeness"],
        riskTaking: json["risk_taking"],
        proactiveness: json["proactiveness"],
        competitiveAgresiveness: json["competitive_agresiveness"],
        conclusion: Ion.fromJson(json["conclusion"]),
        suggestion: Ion.fromJson(json["suggestion"]),
        star: Star.fromJson(json["star"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "autonomy": autonomy,
        "innovativeness": innovativeness,
        "risk_taking": riskTaking,
        "proactiveness": proactiveness,
        "competitive_agresiveness": competitiveAgresiveness,
        "conclusion": conclusion.toJson(),
        "suggestion": suggestion.toJson(),
        "star": star.toJson(),
      };
}

class Ion {
  Ion({
    required this.high,
    required this.low,
  });

  String high;
  String low;

  factory Ion.fromJson(Map<String, dynamic> json) => Ion(
        high: json["high"],
        low: json["low"],
      );

  Map<String, dynamic> toJson() => {
        "high": high,
        "low": low,
      };
}

class Star {
  Star({
    required this.autonomy,
    required this.innovativeness,
    required this.riskTaking,
    required this.proactiveness,
    required this.competitiveAgresiveness,
  });

  int autonomy;
  int innovativeness;
  int riskTaking;
  int proactiveness;
  int competitiveAgresiveness;

  factory Star.fromJson(Map<String, dynamic> json) => Star(
        autonomy: json["autonomy"],
        innovativeness: json["innovativeness"],
        riskTaking: json["risk_taking"],
        proactiveness: json["proactiveness"],
        competitiveAgresiveness: json["competitive_agresiveness"],
      );

  Map<String, dynamic> toJson() => {
        "autonomy": autonomy,
        "innovativeness": innovativeness,
        "risk_taking": riskTaking,
        "proactiveness": proactiveness,
        "competitive_agresiveness": competitiveAgresiveness,
      };
}
