class ProductResponseModel {
  List<Product>? products;
  int? total;
  int? skip;
  int? limit;

  ProductResponseModel({this.products, this.total, this.skip, this.limit});

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) {
    return ProductResponseModel(
      products:
          json['products'] != null
              ? List<Product>.from(
                json['products'].map((e) => Product.fromJson(e)),
              )
              : null,
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
    );
  }
}

class Product {
  int? id;
  String? title;
  String? description;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  Product({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: (json['price'] as num?)?.toDouble(),
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      stock: json['stock'],
      brand: json['brand'],
      category: json['category'],
      thumbnail: json['thumbnail'],
      images: json['images'] != null ? List<String>.from(json['images']) : null,
    );
  }
}
