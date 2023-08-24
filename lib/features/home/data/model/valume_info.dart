

import 'image_links.dart';

class volumeInfo{
    String? title;
    String? subtitle;
    String? description;
    String?  publishedDate;
    List<dynamic>? authors;
    List<dynamic>? categories;
    ImageLinks? imageLinks;

  volumeInfo.fromjson(Map<String,dynamic> json){
    title =json['title'];
    subtitle =json['subtitle'];
    publishedDate =json['publishedDate'];
    description =json['description'];
    authors =json['authors'];
    categories =(json['categories']);
    imageLinks= ImageLinks.fromjson(json['imageLinks']);
  }


  Map<String,dynamic> tojson()=>{
     "title":title,
     'subtitle':subtitle ,
     'publishedDate': publishedDate,
    "description" :description,
    "authors" : authors as List<dynamic>,
    "categories" :categories as List<dynamic>,
    "imageLinks": imageLinks!.tojson()
  };
}