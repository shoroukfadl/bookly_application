import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/homerepos.dart';
import 'newsetbooks_state.dart';

class NewsetbooksCubit extends Cubit<NewsetbooksStates> {
  NewsetbooksCubit(this.homeRepos) : super(NewsetbooksInitialState ());

  final HomeRepo homeRepos;

  Future<void> featchnewestbooks() async {
    emit(NewsetbooksLoadingState ());

    var response = await homeRepos.featurenewestbooks();
    response.fold((failure) {
      emit(NewsetbooksErrorState (failure.errormessage));
    }, (books) {
      emit(NewsetbooksSuccessState (books));
    });
 }
}
