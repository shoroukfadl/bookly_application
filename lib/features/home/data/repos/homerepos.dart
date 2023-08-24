
import 'package:dartz/dartz.dart';

import '../../../../core/error/failers.dart';
import '../model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, BookModel>> featurenewestbooks();
  Future<Either<Failure, BookModel>> featurefeaturesbooks();
  //Future<Either<Failure, BookModel>> featuredsimlierbooks({required String category});
}
