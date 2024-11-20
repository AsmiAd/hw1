// To parse this JSON data, do
//
//     final postResponsePhotoModel = postResponsePhotoModelFromJson(jsonString);

import 'dart:convert';

List<PostResponsePhotoModel> postResponsePhotoModelFromJson(String str) => List<PostResponsePhotoModel>.from(json.decode(str).map((x) => PostResponsePhotoModel.fromJson(x)));

String postResponsePhotoModelToJson(List<PostResponsePhotoModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostResponsePhotoModel {
    final int? albumId;
    final int? id;
    final String? title;
    final String? url;
    final String? thumbnailUrl;

    PostResponsePhotoModel({
        this.albumId,
        this.id,
        this.title,
        this.url,
        this.thumbnailUrl,
    });

    factory PostResponsePhotoModel.fromJson(Map<String, dynamic> json) => PostResponsePhotoModel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
    );

    Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
    };
}
