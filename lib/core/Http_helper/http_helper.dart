import 'dart:convert';
import 'package:http/http.dart' as http;
class HttpHelper{
  String _baseUrl ='https://www.googleapis.com/books/v1/';
  Future<dynamic> getData({
    required String Url,
   // String? token,
  })async
  {
    Map<String,String> headers ={
      'Content-Type': 'application/json',
      'Accept':'*/*'
    };
    // if(token != null)
    // {
    //   headers.addAll({
    //     'Authorization':token
    //   });
    // }
    http.Response response =  await http.get(Uri.parse("$_baseUrl$Url"),headers: headers);
    return response;
  }

  Future<dynamic> postData({
    required String Url
    ,required dynamic boady,
   // String? token
  })async
  {
    Map<String,String> headers ={
     // 'Content-Type': 'text/plain',
      'Accept':'*/*'
    };

    // if(token != null)
    //   {
    //     headers.addAll({
    //      'Authorization':token
    //     });
    //   }
      http.Response response =  await http.post(Uri.parse("$_baseUrl$Url"),
      body: boady,
      headers: headers,
    );

    return response;

  }

  Future<dynamic> putData({
    required String Url
    ,required dynamic boady,
    // String? token
  })async
  {
    Map<String,String> headers ={
      'Content-Type': 'application/json',
      'Accept':'*/*'
    };
    // if(token != null)
    // {
    //   headers.addAll({
    //     'Authorization':token!
    //   });
    // }
    http.Response response =  await http.put(Uri.parse("$_baseUrl$Url"),
      body: boady,
      headers: headers,
    );

    return response;

  }

  Future<dynamic> delete({
    required String Url ,
    required dynamic boady,
    //String? token
  })async
  {
    Map<String,String> headers ={
      'Content-Type': 'application/json',
      'Accept':'*/*'
    };

    // if(token != null)
    // {
    //   headers.addAll({
    //     'Authorization':token
    //   });
    // }
    http.Response response =  await http.delete(Uri.parse("$_baseUrl$Url"),
      body: boady,
      headers: headers,
    );

    return response;

  }
}