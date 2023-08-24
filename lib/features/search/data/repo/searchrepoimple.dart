//
//
// import 'package:dartz/dartz.dart';
// import 'searchrepo.dart';
//
// class Searchrepoimple implements Searchrepo{
//   @override
//   Future<Either<Faillure, List<BookModel>>> featurecustombooks({required String bookname}) async{
//     try {
//       var value = await DioHelper.get(url: "volumes", query: {
//         "Sorting": "newest",
//         "q": bookname,
//         "Filtering": "free-ebooks",
//         "subject": "programming"
//       });
//       List<BookModel> books = [];
//       for (var item in value.data["items"]) {
//         books.add(BookModel.fromJson(item));
//       }
//
//       return right(books);
//     } on Exception catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioError(e));
//       } else {
//         return left(ServerFailure(e.toString()));
//       }
//     }
//   }
// }