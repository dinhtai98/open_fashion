class ProductDto {
  final String image;
  final String name;
  final String description;
  final double price;
  final double rating;
  final List<ProductSizeDto> size;
  final bool favorite;

  ProductDto({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    this.rating = 5.0,
    required this.size,
    this.favorite = false,
  });
}

class ProductSizeDto {
  final String size;

  ProductSizeDto({required this.size});
}
