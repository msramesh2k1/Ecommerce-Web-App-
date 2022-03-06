class CategoryModel {
  String? title;
  String? url;

  CategoryModel({this.title, this.url});

  CategoryModel.fromJson(Map<String, dynamic> parsedJSON)
      : title = parsedJSON['title'],
        url = parsedJSON['url'];
}
