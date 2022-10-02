class ProductModel {
  double id;
  String name;
  double price;
  String desc;
  String category;
  String image;
  ProductModel(
      this.id, this.name, this.price, this.desc, this.category, this.image);
}

class getproducts {
  List getProduct() {
    return [
      ProductModel(1, "Mac Air with M1 chip", 2000, "Mac Air with M1 chip",
          "Mac", "assets/images/1.webp"),
      ProductModel(2, "Mac Air with M2 chip", 1000, "Mac Air with M2 chip",
          "Mac", "assets/images/3.webp"),
      ProductModel(3, "Mac Book 13 pro", 800, "Mac Air with M1 chip", "Mac",
          "assets/images/8.webp"),
      ProductModel(4, "i Mac 14", 900, "Mac Air with M1 chip", "Mac",
          "assets/images/13.webp"),
      ProductModel(5, "Studio Display ", 500, "Mac Air with M1 chip", "Mac",
          "assets/images/15.webp"),
      ProductModel(6, "Mac mini Studio ", 600, "Mac Air with M1 chip", "Mac",
          "assets/images/3.webp"),
      ProductModel(
        7,
        "iPhone 13",
        993,
        "Mac Air with M1 chip",
        "iPhone",
        "assets/images/2.webp",
      ),
      ProductModel(
        8,
        "iPhone 13 pro",
        999,
        "Mac Air with M1 chip",
        "iPhone",
        "assets/images/5.webp",
      ),
      ProductModel(
        9,
        "iPhone SE",
        799,
        "Mac Air with M1 chip",
        "iPhone",
        "assets/images/12.webp",
      ),
      ProductModel(
        10,
        "iPhone 11",
        755,
        "Mac Air with M1 chip",
        "iPhone",
        "assets/images/14.webp",
      ),
      ProductModel(
        11,
        "iPhone 11 pro",
        1000,
        "Mac Air with M1 chip",
        "iPhone",
        "assets/images/21.webp",
      ),
      ProductModel(
        12,
        "iPhone 11",
        999,
        "Mac Air with M1 chip",
        "iPhone",
        "assets/images/12.webp",
      ),
      ProductModel(
        13,
        "Watch series",
        399,
        "Mac Air with M1 chip",
        "Watch",
        "assets/images/4.webp",
      ),
      ProductModel(
        14,
        "Watch SE",
        233,
        "Mac Air with M1 chip",
        "Watch",
        "assets/images/10.webp",
      ),
      ProductModel(
        15,
        "Watch Nike",
        255,
        "Mac Air with M1 chip",
        "Watch",
        "assets/images/11.webp",
      ),
      ProductModel(
        16,
        "Watch Hermas",
        399,
        "Mac Air with M1 chip",
        "Watch",
        "assets/images/18.webp",
      ),
      ProductModel(
        17,
        "Watch series 3",
        499,
        "Mac Air with M1 chip",
        "Watch",
        "assets/images/20.webp",
      ),
      ProductModel(18, "iPad pro", 344, "Mac Air with M1 chip", "iPad",
          "assets/images/6.webp"),
      ProductModel(19, "iPad Air", 300, "Mac Air with M1 chip", "iPad",
          "assets/images/9.webp"),
      ProductModel(20, "iPad mini", 499, "Mac Air with M1 chip", "iPad",
          "assets/images/16.webp"),
      ProductModel(21, "iPad", 388, "Mac Air with M1 chip", "iPad",
          "assets/images/17.webp"),
    ];
  }
}
