
import '../../../data/model/book_model.dart';

abstract class SimilerBooksStates  {
}

class SimilerBooksInitialState extends SimilerBooksStates {}

class SimilerBooksSuccessState extends SimilerBooksStates {
  final BookModel books;
   SimilerBooksSuccessState({required this.books});
}

class SimilerBooksErrorState extends SimilerBooksStates {
  final String errormessage;
  SimilerBooksErrorState({required this.errormessage});
}

class SimilerBooksLoadingState extends SimilerBooksStates {}
