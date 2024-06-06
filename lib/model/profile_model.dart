
class ProfileModel {
  int? id;
  String? name;
  String? url;
  String? description;
  String? link;
  String? slug;
  AvatarUrls? avatarUrls;
  List<dynamic>? meta;
  Links? links;

  ProfileModel({this.id, this.name, this.url, this.description, this.link, this.slug, this.avatarUrls, this.meta, this.links});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["link"] is String) {
      link = json["link"];
    }
    if(json["slug"] is String) {
      slug = json["slug"];
    }
    if(json["avatar_urls"] is Map) {
      avatarUrls = json["avatar_urls"] == null ? null : AvatarUrls.fromJson(json["avatar_urls"]);
    }
    if(json["meta"] is List) {
      meta = json["meta"] ?? [];
    }
    if(json["_links"] is Map) {
      links = json["_links"] == null ? null : Links.fromJson(json["_links"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["url"] = url;
    _data["description"] = description;
    _data["link"] = link;
    _data["slug"] = slug;
    if(avatarUrls != null) {
      _data["avatar_urls"] = avatarUrls?.toJson();
    }
    if(meta != null) {
      _data["meta"] = meta;
    }
    if(links != null) {
      _data["_links"] = links?.toJson();
    }
    return _data;
  }
}

class Links {
  List<Self>? self;
  List<Collection>? collection;

  Links({this.self, this.collection});

  Links.fromJson(Map<String, dynamic> json) {
    if(json["self"] is List) {
      self = json["self"] == null ? null : (json["self"] as List).map((e) => Self.fromJson(e)).toList();
    }
    if(json["collection"] is List) {
      collection = json["collection"] == null ? null : (json["collection"] as List).map((e) => Collection.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(self != null) {
      _data["self"] = self?.map((e) => e.toJson()).toList();
    }
    if(collection != null) {
      _data["collection"] = collection?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Collection {
  String? href;

  Collection({this.href});

  Collection.fromJson(Map<String, dynamic> json) {
    if(json["href"] is String) {
      href = json["href"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["href"] = href;
    return _data;
  }
}

class Self {
  String? href;

  Self({this.href});

  Self.fromJson(Map<String, dynamic> json) {
    if(json["href"] is String) {
      href = json["href"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["href"] = href;
    return _data;
  }
}

class AvatarUrls {
  String? towfour;
  String? foureight;
  String? ninesix;

  AvatarUrls({this.towfour, this.foureight, this.ninesix});

AvatarUrls.fromJson(Map<String, dynamic> json) {
if(json["24"] is String) {
  towfour = json["24"];
}
if(json["48"] is String) {
  foureight = json["48"];
}
if(json["96"] is String) {
  ninesix = json["96"];
}
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> _data = <String, dynamic>{};
_data["24"] = 24;
_data["48"] = 48;
_data["96"] = 96;
return _data;
}
}