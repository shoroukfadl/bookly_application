import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import '../../../../core/Http_helper/http_helper.dart';
import '../../../../core/error/failers.dart';
import '../model/book_model.dart';
import 'homerepos.dart';

class HomeRepoImplementation implements HomeRepo {

  @override
  Future<Either<Failure, BookModel>> featurefeaturesbooks()async {
    late Response response;
    BookModel model;
    try{
      response =  await HttpHelper().getData(Url: "volumes?Filtering=free-ebooks &q=subject:Programming ");
      Map<String,dynamic> data = jsonDecode(response.body);
      print(data.values.last);
      model =  BookModel.fromjson(data);
      print(model.items!.length);
      return Right(model);
    }catch(e){
      print(e.toString());
      return Left(ServerFailure.fromResponse(response.statusCode, response));
    }
  }

  @override
  Future<Either<Failure, BookModel>> featurenewestbooks() async{
    late Response response;
    BookModel model;
    try{
      response =  await HttpHelper().getData(Url: "volumes?Filtering=free-ebooks&Sorting=newest &q=computer ");
      Map<String,dynamic> data = jsonDecode(response.body);
      print(data.values.last);
      model =  BookModel.fromjson(data);
      print(model.items!.length);
      return Right(model);
    }catch(e){
      print(e.toString());
      return Left(ServerFailure.fromResponse(response.statusCode, response));
    }
  }


  @override
  Future<Either<Failure, BookModel>> featuredsimlierbooks({
    required String category
}) async{
    late Response response;
    BookModel model;
    try{
      response =  await HttpHelper().getData(Url: "volumes?Filtering=free-ebooks&Sorting=relevance &q=computer ");
      Map<String,dynamic> data = jsonDecode(response.body);
      print(data.values.last);
      model =  BookModel.fromjson(data);
      print(model.items!.length);
      return Right(model);
    }catch(e){
      print(e.toString());
      return Left(ServerFailure.fromResponse(response.statusCode, response));
    }

    }
}
