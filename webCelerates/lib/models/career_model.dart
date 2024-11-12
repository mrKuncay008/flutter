class CareerModelNew {
  bool? success;
  Data? data;

  CareerModelNew({this.success, this.data});

  CareerModelNew.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Career>? career;

  Data({this.career});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['career'] != null) {
      career = <Career>[];
      json['career'].forEach((v) {
        career!.add(Career.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (career != null) {
      data['career'] = career!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Career {
  String? title;
  String? description;
  String? link;

  Career({this.title, this.description, this.link});

  Career.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['link'] = link;
    return data;
  }
}
