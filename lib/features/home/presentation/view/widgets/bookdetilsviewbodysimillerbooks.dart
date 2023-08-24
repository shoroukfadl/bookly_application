import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/customerrorimage.dart';
import '../../../../../core/widgets/customloadingimage.dart';
import '../../manger/similerbooks/similer_books_cubit.dart';
import '../../manger/similerbooks/similer_books_state.dart';
import 'customimagebuilder.dart';

class SimillerBookView extends StatelessWidget {
  const SimillerBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksStates>(
      builder: (context, state) {
        if (state is SimilerBooksSuccessState) {
  return SizedBox(
    height: MediaQuery.sizeOf(context).height * 0.15,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemCount: state.books.items!.length,
      itemBuilder: (context, index) {
        return  CustomImageBuilder(
            imageurl:  state.books.items![index].VolumeInfo!.imageLinks!.thumbnail??"");
      },
    ),
  );
}     else if (state is SimilerBooksErrorState) {
          return CustomErrorImage(errormesage: state.errormessage);
        } else {
          return const CustomLoadingImage();
        }
      },
    );
  }
}
