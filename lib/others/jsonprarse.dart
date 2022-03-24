// To parse this JSON data, do
//
//     final loginappParse = loginappParseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<LoginappParse> loginappParseFromJson(String str) =>
    List<LoginappParse>.from(
        json.decode(str).map((x) => LoginappParse.fromJson(x)));

String loginappParseToJson(List<LoginappParse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoginappParse {
  LoginappParse({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.marketCap,
    required this.marketCapRank,
    required this.fullyDilutedValuation,
    required this.totalVolume,
    required this.high24H,
    required this.low24H,
    required this.priceChange24H,
    required this.priceChangePercentage24H,
    required this.marketCapChange24H,
    required this.marketCapChangePercentage24H,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.ath,
    required this.athChangePercentage,
    required this.athDate,
    required this.atl,
    required this.atlChangePercentage,
    required this.atlDate,
    required this.roi,
    required this.lastUpdated,
  });

  String id;
  String symbol;
  String name;
  String image;
  num currentPrice;
  int marketCap;
  int marketCapRank;
  int fullyDilutedValuation;
  int totalVolume;
  num high24H;
  num low24H;
  num priceChange24H;
  num priceChangePercentage24H;
  num marketCapChange24H;
  num marketCapChangePercentage24H;
  num circulatingSupply;
  num totalSupply;
  num maxSupply;
  num ath;
  double athChangePercentage;
  DateTime athDate;
  double atl;
  double atlChangePercentage;
  DateTime atlDate;
  dynamic roi;
  DateTime lastUpdated;

  factory LoginappParse.fromJson(Map<String, dynamic> json) => LoginappParse(
        id: json["id"],
        symbol: json["symbol"] as String,
        name: json["name"],
        image: json["image"],
        currentPrice: json["current_price"],
        marketCap: json["market_cap"],
        marketCapRank: json["market_cap_rank"],
        fullyDilutedValuation: json["fully_diluted_valuation"] ?? 0,
        totalVolume: json["total_volume"],
        high24H: json["high_24h"],
        low24H: json["low_24h"],
        priceChange24H: json["price_change_24h"].toDouble(),
        priceChangePercentage24H:
            json["price_change_percentage_24h"].toDouble(),
        marketCapChange24H: json["market_cap_change_24h"].toDouble(),
        marketCapChangePercentage24H:
            json["market_cap_change_percentage_24h"].toDouble(),
        circulatingSupply: json["circulating_supply"],
        totalSupply: json["total_supply"] ?? 00,
        maxSupply: json["max_supply"] ?? 00,
        ath: json["ath"] ?? 00,
        athChangePercentage: json["ath_change_percentage"].toDouble(),
        athDate: DateTime.parse(json["ath_date"]),
        atl: json["atl"].toDouble(),
        atlChangePercentage: json["atl_change_percentage"].toDouble(),
        atlDate: DateTime.parse(json["atl_date"]),
        roi: json["roi"] ?? 0,
        lastUpdated: DateTime.parse(json["last_updated"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "image": image,
        "current_price": currentPrice,
        "market_cap": marketCap,
        "market_cap_rank": marketCapRank,
        "fully_diluted_valuation": fullyDilutedValuation,
        "total_volume": totalVolume,
        "high_24h": high24H,
        "low_24h": low24H,
        "price_change_24h": priceChange24H,
        "price_change_percentage_24h": priceChangePercentage24H,
        "market_cap_change_24h": marketCapChange24H,
        "market_cap_change_percentage_24h": marketCapChangePercentage24H,
        "circulating_supply": circulatingSupply,
        "total_supply": totalSupply,
        "max_supply": maxSupply,
        "ath": ath,
        "ath_change_percentage": athChangePercentage,
        "ath_date": athDate.toIso8601String(),
        "atl": atl,
        "atl_change_percentage": atlChangePercentage,
        "atl_date": atlDate.toIso8601String(),
        "roi": roi,
        "last_updated": lastUpdated.toIso8601String(),
      };
}
