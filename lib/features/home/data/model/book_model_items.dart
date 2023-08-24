

import 'package:bookly_application/features/home/data/model/valume_info.dart';

class BookModelItem{
   String? id;
   String? etag;
  String? selfLink;
  volumeInfo? VolumeInfo;

  BookModelItem.fromjson(Map<String,dynamic> json){
    id =json['id'];
    etag =json['etag'];
    selfLink =json['selfLink'];
    VolumeInfo= volumeInfo.fromjson(json['volumeInfo']);
  }


  Map<String,dynamic> tojson()=>{
    "id":id,
    'etag':etag ,
    'selfLink': selfLink,
    "volumeInfo": VolumeInfo!.tojson()
  };
}