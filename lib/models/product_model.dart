class ProductModel {
  String title;
  String url;
  int price;
  int oriprice;
  String category;
  String roomtype;
  String id;
  String info;
  int warranty;
  int weight;
  String material;
  String finish;
  int width;
  int height;
  int dimension;

  ProductModel(
      {required this.title,
      required this.url,
      required this.price,
      required this.oriprice,
      required this.category,
      required this.roomtype,
      required this.id,
      required this.warranty,
      required this.weight,
    required this.info,
    required this.material,
    required this.finish,
    required this.width,
    required this.height,
    required this.dimension});

  ProductModel.fromJson(Map<String, dynamic> parsedJSON)
      : title = parsedJSON['title'],
        url = parsedJSON['url'],
        price = parsedJSON['price'],
        oriprice = parsedJSON['oriprice'],
        category = parsedJSON['category'],
        roomtype = parsedJSON['roomtype'],
        id = parsedJSON['id'],
        warranty = parsedJSON['warranty'],
        weight = parsedJSON['weight'],
        info = parsedJSON['info'],
        material = parsedJSON['material'],
        finish = parsedJSON['finish'],
        width = parsedJSON['width'],
        height = parsedJSON['height'],
        dimension = parsedJSON['dimension'];
}
