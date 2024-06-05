
class HomeModel {
  int? id;
  String? name;
  String? slug;
  String? postAuthor;
  String? permalink;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? type;
  String? status;
  bool? featured;
  String? catalogVisibility;
  String? description;
  String? shortDescription;
  String? sku;
  String? price;
  String? regularPrice;
  String? salePrice;
  String? priceHtml;
  bool? onSale;
  bool? purchasable;
  int? totalSales;
  bool? virtual;
  bool? downloadable;
  List<dynamic>? downloads;
  int? downloadLimit;
  int? downloadExpiry;
  String? externalUrl;
  String? buttonText;
  String? taxStatus;
  String? taxClass;
  bool? manageStock;
  String? lowStockAmount;
  bool? inStock;
  String? backorders;
  bool? backordersAllowed;
  bool? backordered;
  bool? soldIndividually;
  String? weight;
  Dimensions? dimensions;
  bool? shippingRequired;
  bool? shippingTaxable;
  String? shippingClass;
  int? shippingClassId;
  bool? reviewsAllowed;
  String? averageRating;
  int? ratingCount;
  List<int>? relatedIds;
  List<dynamic>? upsellIds;
  List<dynamic>? crossSellIds;
  int? parentId;
  String? purchaseNote;
  List<Categories>? categories;
  List<dynamic>? tags;
  List<Images>? images;
  List<dynamic>? attributes;
  List<dynamic>? defaultAttributes;
  List<dynamic>? variations;
  List<dynamic>? groupedProducts;
  int? menuOrder;
  List<MetaData>? metaData;
  Store? store;
  Links? links;
  int? stockQuantity;

  HomeModel({this.id, this.name, this.slug, this.postAuthor, this.permalink, this.dateCreated, this.dateCreatedGmt, this.dateModified, this.dateModifiedGmt, this.type, this.status, this.featured, this.catalogVisibility, this.description, this.shortDescription, this.sku, this.price, this.regularPrice, this.salePrice, this.priceHtml, this.onSale, this.purchasable, this.totalSales, this.virtual, this.downloadable, this.downloads, this.downloadLimit, this.downloadExpiry, this.externalUrl, this.buttonText, this.taxStatus, this.taxClass, this.manageStock, this.lowStockAmount, this.inStock, this.backorders, this.backordersAllowed, this.backordered, this.soldIndividually, this.weight, this.dimensions, this.shippingRequired, this.shippingTaxable, this.shippingClass, this.shippingClassId, this.reviewsAllowed, this.averageRating, this.ratingCount, this.relatedIds, this.upsellIds, this.crossSellIds, this.parentId, this.purchaseNote, this.categories, this.tags, this.images, this.attributes, this.defaultAttributes, this.variations, this.groupedProducts, this.menuOrder, this.metaData, this.store, this.links, this.stockQuantity});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["slug"] is String) {
      slug = json["slug"];
    }
    if(json["post_author"] is String) {
      postAuthor = json["post_author"];
    }
    if(json["permalink"] is String) {
      permalink = json["permalink"];
    }
    if(json["date_created"] is String) {
      dateCreated = json["date_created"];
    }
    if(json["date_created_gmt"] is String) {
      dateCreatedGmt = json["date_created_gmt"];
    }
    if(json["date_modified"] is String) {
      dateModified = json["date_modified"];
    }
    if(json["date_modified_gmt"] is String) {
      dateModifiedGmt = json["date_modified_gmt"];
    }
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["featured"] is bool) {
      featured = json["featured"];
    }
    if(json["catalog_visibility"] is String) {
      catalogVisibility = json["catalog_visibility"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["short_description"] is String) {
      shortDescription = json["short_description"];
    }
    if(json["sku"] is String) {
      sku = json["sku"];
    }
    if(json["price"] is String) {
      price = json["price"];
    }
    if(json["regular_price"] is String) {
      regularPrice = json["regular_price"];
    }
    if(json["sale_price"] is String) {
      salePrice = json["sale_price"];
    }
    if(json["price_html"] is String) {
      priceHtml = json["price_html"];
    }
    if(json["on_sale"] is bool) {
      onSale = json["on_sale"];
    }
    if(json["purchasable"] is bool) {
      purchasable = json["purchasable"];
    }
    if(json["total_sales"] is int) {
      totalSales = json["total_sales"];
    }
    if(json["virtual"] is bool) {
      virtual = json["virtual"];
    }
    if(json["downloadable"] is bool) {
      downloadable = json["downloadable"];
    }
    if(json["downloads"] is List) {
      downloads = json["downloads"] ?? [];
    }
    if(json["download_limit"] is int) {
      downloadLimit = json["download_limit"];
    }
    if(json["download_expiry"] is int) {
      downloadExpiry = json["download_expiry"];
    }
    if(json["external_url"] is String) {
      externalUrl = json["external_url"];
    }
    if(json["button_text"] is String) {
      buttonText = json["button_text"];
    }
    if(json["tax_status"] is String) {
      taxStatus = json["tax_status"];
    }
    if(json["tax_class"] is String) {
      taxClass = json["tax_class"];
    }
    if(json["manage_stock"] is bool) {
      manageStock = json["manage_stock"];
    }
    if(json["low_stock_amount"] is String) {
      lowStockAmount = json["low_stock_amount"];
    }
    if(json["in_stock"] is bool) {
      inStock = json["in_stock"];
    }
    if(json["backorders"] is String) {
      backorders = json["backorders"];
    }
    if(json["backorders_allowed"] is bool) {
      backordersAllowed = json["backorders_allowed"];
    }
    if(json["backordered"] is bool) {
      backordered = json["backordered"];
    }
    if(json["sold_individually"] is bool) {
      soldIndividually = json["sold_individually"];
    }
    if(json["weight"] is String) {
      weight = json["weight"];
    }
    if(json["dimensions"] is Map) {
      dimensions = json["dimensions"] == null ? null : Dimensions.fromJson(json["dimensions"]);
    }
    if(json["shipping_required"] is bool) {
      shippingRequired = json["shipping_required"];
    }
    if(json["shipping_taxable"] is bool) {
      shippingTaxable = json["shipping_taxable"];
    }
    if(json["shipping_class"] is String) {
      shippingClass = json["shipping_class"];
    }
    if(json["shipping_class_id"] is int) {
      shippingClassId = json["shipping_class_id"];
    }
    if(json["reviews_allowed"] is bool) {
      reviewsAllowed = json["reviews_allowed"];
    }
    if(json["average_rating"] is String) {
      averageRating = json["average_rating"];
    }
    if(json["rating_count"] is int) {
      ratingCount = json["rating_count"];
    }
    if(json["related_ids"] is List) {
      relatedIds = json["related_ids"] == null ? null : List<int>.from(json["related_ids"]);
    }
    if(json["upsell_ids"] is List) {
      upsellIds = json["upsell_ids"] ?? [];
    }
    if(json["cross_sell_ids"] is List) {
      crossSellIds = json["cross_sell_ids"] ?? [];
    }
    if(json["parent_id"] is int) {
      parentId = json["parent_id"];
    }
    if(json["purchase_note"] is String) {
      purchaseNote = json["purchase_note"];
    }
    if(json["categories"] is List) {
      categories = json["categories"] == null ? null : (json["categories"] as List).map((e) => Categories.fromJson(e)).toList();
    }
    if(json["tags"] is List) {
      tags = json["tags"] ?? [];
    }
    if(json["images"] is List) {
      images = json["images"] == null ? null : (json["images"] as List).map((e) => Images.fromJson(e)).toList();
    }
    if(json["attributes"] is List) {
      attributes = json["attributes"] ?? [];
    }
    if(json["default_attributes"] is List) {
      defaultAttributes = json["default_attributes"] ?? [];
    }
    if(json["variations"] is List) {
      variations = json["variations"] ?? [];
    }
    if(json["grouped_products"] is List) {
      groupedProducts = json["grouped_products"] ?? [];
    }
    if(json["menu_order"] is int) {
      menuOrder = json["menu_order"];
    }
    if(json["meta_data"] is List) {
      metaData = json["meta_data"] == null ? null : (json["meta_data"] as List).map((e) => MetaData.fromJson(e)).toList();
    }
    if(json["store"] is Map) {
      store = json["store"] == null ? null : Store.fromJson(json["store"]);
    }
    if(json["_links"] is Map) {
      links = json["_links"] == null ? null : Links.fromJson(json["_links"]);
    }
    if(json["stock_quantity"] is int) {
      stockQuantity = json["stock_quantity"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["slug"] = slug;
    _data["post_author"] = postAuthor;
    _data["permalink"] = permalink;
    _data["date_created"] = dateCreated;
    _data["date_created_gmt"] = dateCreatedGmt;
    _data["date_modified"] = dateModified;
    _data["date_modified_gmt"] = dateModifiedGmt;
    _data["type"] = type;
    _data["status"] = status;
    _data["featured"] = featured;
    _data["catalog_visibility"] = catalogVisibility;
    _data["description"] = description;
    _data["short_description"] = shortDescription;
    _data["sku"] = sku;
    _data["price"] = price;
    _data["regular_price"] = regularPrice;
    _data["sale_price"] = salePrice;
    _data["price_html"] = priceHtml;
    _data["on_sale"] = onSale;
    _data["purchasable"] = purchasable;
    _data["total_sales"] = totalSales;
    _data["virtual"] = virtual;
    _data["downloadable"] = downloadable;
    if(downloads != null) {
      _data["downloads"] = downloads;
    }
    _data["download_limit"] = downloadLimit;
    _data["download_expiry"] = downloadExpiry;
    _data["external_url"] = externalUrl;
    _data["button_text"] = buttonText;
    _data["tax_status"] = taxStatus;
    _data["tax_class"] = taxClass;
    _data["manage_stock"] = manageStock;
    _data["low_stock_amount"] = lowStockAmount;
    _data["in_stock"] = inStock;
    _data["backorders"] = backorders;
    _data["backorders_allowed"] = backordersAllowed;
    _data["backordered"] = backordered;
    _data["sold_individually"] = soldIndividually;
    _data["weight"] = weight;
    if(dimensions != null) {
      _data["dimensions"] = dimensions?.toJson();
    }
    _data["shipping_required"] = shippingRequired;
    _data["shipping_taxable"] = shippingTaxable;
    _data["shipping_class"] = shippingClass;
    _data["shipping_class_id"] = shippingClassId;
    _data["reviews_allowed"] = reviewsAllowed;
    _data["average_rating"] = averageRating;
    _data["rating_count"] = ratingCount;
    if(relatedIds != null) {
      _data["related_ids"] = relatedIds;
    }
    if(upsellIds != null) {
      _data["upsell_ids"] = upsellIds;
    }
    if(crossSellIds != null) {
      _data["cross_sell_ids"] = crossSellIds;
    }
    _data["parent_id"] = parentId;
    _data["purchase_note"] = purchaseNote;
    if(categories != null) {
      _data["categories"] = categories?.map((e) => e.toJson()).toList();
    }
    if(tags != null) {
      _data["tags"] = tags;
    }
    if(images != null) {
      _data["images"] = images?.map((e) => e.toJson()).toList();
    }
    if(attributes != null) {
      _data["attributes"] = attributes;
    }
    if(defaultAttributes != null) {
      _data["default_attributes"] = defaultAttributes;
    }
    if(variations != null) {
      _data["variations"] = variations;
    }
    if(groupedProducts != null) {
      _data["grouped_products"] = groupedProducts;
    }
    _data["menu_order"] = menuOrder;
    if(metaData != null) {
      _data["meta_data"] = metaData?.map((e) => e.toJson()).toList();
    }
    if(store != null) {
      _data["store"] = store?.toJson();
    }
    if(links != null) {
      _data["_links"] = links?.toJson();
    }
    _data["stock_quantity"] = stockQuantity;
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

class Store {
  int? id;
  String? name;
  String? url;
  String? avatar;
  Address? address;

  Store({this.id, this.name, this.url, this.avatar, this.address});

  Store.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["avatar"] is String) {
      avatar = json["avatar"];
    }
    if(json["address"] is Map) {
      address = json["address"] == null ? null : Address.fromJson(json["address"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["url"] = url;
    _data["avatar"] = avatar;
    if(address != null) {
      _data["address"] = address?.toJson();
    }
    return _data;
  }
}

class Address {
  String? street1;
  String? street2;
  String? city;
  String? zip;
  String? country;
  String? state;

  Address({this.street1, this.street2, this.city, this.zip, this.country, this.state});

  Address.fromJson(Map<String, dynamic> json) {
    if(json["street_1"] is String) {
      street1 = json["street_1"];
    }
    if(json["street_2"] is String) {
      street2 = json["street_2"];
    }
    if(json["city"] is String) {
      city = json["city"];
    }
    if(json["zip"] is String) {
      zip = json["zip"];
    }
    if(json["country"] is String) {
      country = json["country"];
    }
    if(json["state"] is String) {
      state = json["state"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["street_1"] = street1;
    _data["street_2"] = street2;
    _data["city"] = city;
    _data["zip"] = zip;
    _data["country"] = country;
    _data["state"] = state;
    return _data;
  }
}

class MetaData {
  int? id;
  String? key;
  String? value;

  MetaData({this.id, this.key, this.value});

  MetaData.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["key"] is String) {
      key = json["key"];
    }
    if(json["value"] is String) {
      value = json["value"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["key"] = key;
    _data["value"] = value;
    return _data;
  }
}

class Images {
  int? id;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? src;
  String? name;
  String? alt;
  int? position;

  Images({this.id, this.dateCreated, this.dateCreatedGmt, this.dateModified, this.dateModifiedGmt, this.src, this.name, this.alt, this.position});

  Images.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["date_created"] is String) {
      dateCreated = json["date_created"];
    }
    if(json["date_created_gmt"] is String) {
      dateCreatedGmt = json["date_created_gmt"];
    }
    if(json["date_modified"] is String) {
      dateModified = json["date_modified"];
    }
    if(json["date_modified_gmt"] is String) {
      dateModifiedGmt = json["date_modified_gmt"];
    }
    if(json["src"] is String) {
      src = json["src"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["alt"] is String) {
      alt = json["alt"];
    }
    if(json["position"] is int) {
      position = json["position"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["date_created"] = dateCreated;
    _data["date_created_gmt"] = dateCreatedGmt;
    _data["date_modified"] = dateModified;
    _data["date_modified_gmt"] = dateModifiedGmt;
    _data["src"] = src;
    _data["name"] = name;
    _data["alt"] = alt;
    _data["position"] = position;
    return _data;
  }
}

class Categories {
  int? id;
  String? name;
  String? slug;

  Categories({this.id, this.name, this.slug});

  Categories.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["slug"] is String) {
      slug = json["slug"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["slug"] = slug;
    return _data;
  }
}

class Dimensions {
  String? length;
  String? width;
  String? height;

  Dimensions({this.length, this.width, this.height});

  Dimensions.fromJson(Map<String, dynamic> json) {
    if(json["length"] is String) {
      length = json["length"];
    }
    if(json["width"] is String) {
      width = json["width"];
    }
    if(json["height"] is String) {
      height = json["height"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["length"] = length;
    _data["width"] = width;
    _data["height"] = height;
    return _data;
  }
}