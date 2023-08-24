
import 'package:bookly_application/features/home/presentation/manger/similerbooks/similer_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/homerepos.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksStates> {
  SimilerBooksCubit(this.homerepo) : super(SimilerBooksInitialState());
  final HomeRepo homerepo;

  Future<void> featuresimilerbooks({required String category}) async{
    emit(SimilerBooksLoadingState());
     var response = await homerepo.featuredsimlierbooks(category: category);
    response.fold((failure) {
      emit(SimilerBooksErrorState(errormessage: failure.errormessage));
    }, (books) {
      emit(SimilerBooksSuccessState(books: books));
    });
  }
  }
