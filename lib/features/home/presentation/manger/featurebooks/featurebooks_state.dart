
import '../../../data/model/book_model.dart';

abstract class FeaturedbooksStates {}

class FeaturebooksInitialState extends FeaturedbooksStates {}

class FeaturebooksLoadingState extends FeaturedbooksStates {}

class FeaturebooksErrorState extends FeaturedbooksStates {
  final String errormessage;
  FeaturebooksErrorState(this.errormessage);
}

class FeaturebooksSuccessState extends FeaturedbooksStates {
  final BookModel books;
  FeaturebooksSuccessState(this.books);
}
