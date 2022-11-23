// To parse this JSON data, do
//
//     final myWatchlist = myWatchlistFromJson(jsonString);

import 'dart:convert';

List<MyWatchlist> myWatchlistFromJson(String str) => List<MyWatchlist>.from(json.decode(str).map((x) => MyWatchlist.fromJson(x)));

String myWatchlistToJson(List<MyWatchlist> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyWatchlist {
    MyWatchlist({
        required this.model,
        required this.pk,
        required this.fields,        
    });

    String model;
    int pk;
    Map<String, dynamic> fields; 

    factory MyWatchlist.fromJson(Map<String, dynamic> json) => MyWatchlist(
        model: json["model"],
        pk: json["pk"],
        fields: json["fields"],
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields,
    };
}