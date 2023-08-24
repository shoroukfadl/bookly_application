
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/homerepos.dart';
import 'featurebooks_state.dart';
class FeatureBooksCubit extends Cubit<FeaturedbooksStates> {
  FeatureBooksCubit(this.homeRepo) : super(FeaturebooksInitialState());
  final HomeRepo homeRepo;

  Future<void> featchfuturebooks() async {
    emit(FeaturebooksLoadingState());
    var response = await homeRepo.featurefeaturesbooks();
    response.fold((failure) {
      emit(FeaturebooksErrorState(failure.errormessage));
    }, (books) {
      emit(FeaturebooksSuccessState(books));
    });
  }
}
