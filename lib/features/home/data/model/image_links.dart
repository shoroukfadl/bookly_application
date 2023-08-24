class ImageLinks{
   String? thumbnail;
   ImageLinks.fromjson(Map<String,dynamic> json){
      thumbnail =json['thumbnail'];
   }

   Map<String, dynamic> tojson()=> {'thumbnail': thumbnail};


}