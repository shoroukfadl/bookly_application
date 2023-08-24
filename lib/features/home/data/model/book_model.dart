import 'book_model_items.dart';

class BookModel{
  late int totalItems;
  List<BookModelItem>? items =[];
  BookModel.fromjson(Map<String,dynamic> json){
    totalItems =json['totalItems'];
   json['items'].forEach((element){
     items!.add(BookModelItem.fromjson(element));
   });
  }

}