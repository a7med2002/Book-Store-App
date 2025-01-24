
class BookModel {
  String? id;
  String? title;
  String? description;
  double? rating;
  int? pages;
  String? language;
  String? audioLen;
  String? author;
  String? aboutAuthor;
  String? bookurl;
  String? audiourl;
  String? category;
  int? price;
  int? numberOfRating;

  BookModel({this.id, this.title, this.description, this.rating, this.pages, this.language, this.audioLen, this.author, this.aboutAuthor, this.bookurl, this.audiourl, this.category, this.price, this.numberOfRating});

  BookModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["rating"] is double) {
      rating = json["rating"];
    }
    if(json["pages"] is int) {
      pages = json["pages"];
    }
    if(json["language"] is String) {
      language = json["language"];
    }
    if(json["audioLen"] is String) {
      audioLen = json["audioLen"];
    }
    if(json["author"] is String) {
      author = json["author"];
    }
    if(json["aboutAuthor"] is String) {
      aboutAuthor = json["aboutAuthor"];
    }
    if(json["bookurl"] is String) {
      bookurl = json["bookurl"];
    }
    if(json["audiourl"] is String) {
      audiourl = json["audiourl"];
    }
    if(json["category"] is String) {
      category = json["category"];
    }
    if(json["price"] is int) {
      price = json["price"];
    }
    if(json["numberOfRating"] is int) {
      numberOfRating = json["numberOfRating"];
    }
  }

  static List<BookModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(BookModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["description"] = description;
    _data["rating"] = rating;
    _data["pages"] = pages;
    _data["language"] = language;
    _data["audioLen"] = audioLen;
    _data["author"] = author;
    _data["aboutAuthor"] = aboutAuthor;
    _data["bookurl"] = bookurl;
    _data["audiourl"] = audiourl;
    _data["category"] = category;
    _data["price"] = price;
    _data["numberOfRating"] = numberOfRating;
    return _data;
  }
}