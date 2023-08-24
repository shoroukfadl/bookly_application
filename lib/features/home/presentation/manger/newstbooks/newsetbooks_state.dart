
import '../../../data/model/book_model.dart';

abstract class NewsetbooksStates  {}

class NewsetbooksInitialState extends NewsetbooksStates {}

class NewsetbooksLoadingState  extends NewsetbooksStates {}

class NewsetbooksErrorState  extends NewsetbooksStates {
  final String errormessage;

   NewsetbooksErrorState (this.errormessage);
}

class NewsetbooksSuccessState  extends NewsetbooksStates {
  final BookModel books;
   NewsetbooksSuccessState (this.books);
}
